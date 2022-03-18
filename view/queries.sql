-- Запрос товаров с пагинацией по продуктам найденным через индексный столбец

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
  pa.attributes
FROM shop.products AS p
  JOIN (
    SELECT pidx1.id FROM shop.products AS pidx1
    LIMIT 20 OFFSET 1 -- т.к. товаров пока всего 2
  ) AS pidx ON p.id = pidx.id
   JOIN categories_cte AS cte ON p.id IN (1, 2) AND cte.id = p.category_id
   JOIN (
    SELECT product_id, JSON_OBJECTAGG(attribute_name, attribute_value) AS attributes
    FROM shop.products_attributes
    WHERE product_id IN (1, 2)
    GROUP BY product_id
  ) AS pa ON p.id IN (1, 2) AND p.id = pa.product_id
;


-- Предыдущий запрос переделанный под представление

CREATE OR REPLACE
  DEFINER = supplier
  SQL SECURITY DEFINER
  VIEW shop.products_purchase_prices AS
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
      JOIN categories_cte AS cte ON cte.id = p.category_id
      JOIN (
        SELECT product_id, JSON_OBJECTAGG(attribute_name, attribute_value) AS attributes
        FROM shop.products_attributes
        GROUP BY product_id
      ) AS pa ON p.id = pa.product_id
      JOIN (
        SELECT
          product_id,
          MIN(purchase_price) AS min_purchase_price,
          MAX(purchase_price) AS max_purchase_price
        FROM shop.products_providers
        GROUP BY product_id
      ) AS pp ON p.id = pp.product_id
      JOIN (
        SELECT
          product_id,
          SUM(quantity) AS all_shops_quantity
        FROM shop.products_shops_quantity
        GROUP BY product_id
      ) AS psq ON p.id = psq.product_id
;

-- Запрос с пагинацией с использование представления products_purchase_prices
-- Запускать под пользователем 'supplier' пароль 'sup'
-- для проверки добавлен пользователь 'notsupplier' пароль 'notsup' под ним представление не запускается

SELECT * FROM products_purchase_prices AS ppp
  JOIN (
    SELECT pidx.id FROM shop.products AS pidx
    LIMIT 20 OFFSET 1 -- т.к. товаров пока всего 2
  ) AS pidx ON ppp.id = pidx.id