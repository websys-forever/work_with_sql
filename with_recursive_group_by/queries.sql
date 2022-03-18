-- 1. Для магазина к предыдущему списку продуктов добавить максимальную и минимальную цену и кол-во предложений
-- Возвращает:
-- 1) Путь имен категорий,
-- 2) Полный url товара,
-- 3) Атрибуты,
-- 4) Минимальную закупочную цену товара,
-- 5) Максимальную закупочную цену товара,
-- 6) Количество товара во всех магазинах

WITH RECURSIVE categories_cte (id, parent_id, names_path, url_path) AS (
  SELECT id, parent_id, name, slug FROM shop.categories
  WHERE categories.parent_id = 0
  UNION ALL
  SELECT c.id, c.parent_id, CONCAT(c_cte.names_path, '/', c.name), CONCAT(c_cte.url_path, '/', c.slug) FROM categories AS c
    JOIN categories_cte AS c_cte ON c.parent_id = c_cte.id
)
SELECT
  p.id,
  p.name,
  CONCAT(cte.url_path, '/', p.slug) AS url,
  cte.names_path,
  pa.attributes,
  pp.min_purchase_price,
  pp.max_purchase_price,
  psq.all_shops_quantity
FROM shop.products AS p
 JOIN categories_cte AS cte ON p.id IN (1, 2) AND cte.id = p.category_id
 JOIN (
    SELECT product_id, JSON_OBJECTAGG(attribute_name, attribute_value) AS attributes
    FROM shop.products_attributes
    WHERE product_id IN (1, 2)
    GROUP BY product_id
  ) AS pa ON p.id IN (1, 2) AND p.id = pa.product_id
 JOIN (
    SELECT
      product_id,
      MIN(purchase_price) AS min_purchase_price,
      MAX(purchase_price) AS max_purchase_price
    FROM shop.products_providers
    WHERE product_id IN (1, 2)
    GROUP BY product_id
  ) AS pp ON p.id = pp.product_id
 JOIN (
    SELECT
      product_id,
      SUM(quantity) AS all_shops_quantity
    FROM shop.products_shops_quantity
    WHERE product_id IN (1, 2)
    GROUP BY product_id
  ) AS psq ON p.id = psq.product_id
;


-- 2.1 Выборка показывающая самый дорогой и самый дешевый товар в каждой категории,
-- без GROUPING SET

SELECT
  p.id,
  p.name,
  p.category_id,
  p.regular_price
FROM shop.products AS p
       JOIN (
    SELECT
      category_id,
      MIN(regular_price) AS max_price,
      MAX(regular_price) AS min_price
    FROM shop.products
    GROUP BY category_id
  ) AS pc ON
      (p.category_id = pc.category_id AND p.regular_price = pc.max_price) OR
      (p.category_id = pc.category_id AND p.regular_price = pc.min_price)
     -- сортировка для лучшего восприятия
ORDER BY p.category_id, p.regular_price
;

-- 2.2 Выборка показывающая самый дорогой и самый дешевый товар в каждой категории,
-- с объединением результатов, т.к. в Mysql нет GROUPING SET как в других СУБД, можно сделать объединение UNION ALL,
-- но в моем случае лучше UNION, чтобы исключить повторяющиеся строки (категория, цена)
-- думаю вариант 2.1 будет производительнее на больших данных

SELECT
  p.id,
  p.name,
  p.category_id,
  p.regular_price
FROM shop.products AS p
       JOIN (
    SELECT
      pmax.category_id,
      MAX(pmax.regular_price) AS selected_prices
    FROM shop.products AS pmax
    GROUP BY pmax.category_id
    UNION
    SELECT
      pmin.category_id,
      MIN(pmin.regular_price)
    FROM shop.products AS pmin
    GROUP BY pmin.category_id
  ) AS pc ON p.category_id = pc.category_id AND p.regular_price = pc.selected_prices
     -- сортировка для лучшего восприятия
ORDER BY p.category_id, p.regular_price
;


-- 3.1 Сделать rollup для оценки продаж по категориям товаров. Вариант без HAVING

SELECT
  --  поставил имена для наглядности
  CASE WHEN GROUPING(c.name) = 1
  THEN 'Total proceeds'
  ELSE c.name
  END AS category_name,
  CASE WHEN GROUPING(p.name) = 1 AND !GROUPING(c.name)
  THEN 'Category proceeds'
  ELSE p.name
  END AS product_name,
  SUM(op.quantity * p.regular_price) AS proceeds
FROM shop.orders AS o
  JOIN shop.orders_products AS op ON o.status = 4 -- статус 4 означает, что заказ оплачен
    AND o.id = op.order_id
  JOIN shop.products AS p ON p.id = op.product_id
  JOIN shop.categories AS c ON c.id = p.category_id
GROUP BY c.name, p.name WITH ROLLUP
;