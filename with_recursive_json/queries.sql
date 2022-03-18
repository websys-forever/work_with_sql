-- Для запросов по одному товару.
-- Возвращает путь имен категорий, полный url товара, атрибуты.

WITH RECURSIVE categories_cte (id, name, parent_id, slug, sort, group_col) AS (
  SELECT id, name, parent_id, slug, 1, 1 FROM shop.categories WHERE id = 21
  UNION ALL
  SELECT c.id, c.name, c.parent_id, c.slug, sort + 1, 1 FROM categories_cte AS c_cte
                                                               JOIN categories AS c ON c.id = c_cte.parent_id
)
SELECT
  @names_path := GROUP_CONCAT(name SEPARATOR '/') AS names_path,
  @url_path := GROUP_CONCAT(slug SEPARATOR '/') AS url_path
FROM (SELECT * FROM categories_cte ORDER BY sort DESC) AS cat_cte_sort
GROUP BY group_col
;

SELECT
  id,
  name,
  @names_path AS names_path,
  CONCAT(@url_path, '/', p.slug) AS url,
  pa.attributes
FROM shop.products AS p
       JOIN (
    SELECT product_id, JSON_OBJECTAGG(attribute_name, attribute_value) AS attributes
    FROM shop.products_attributes
    WHERE product_id = 1
    GROUP BY product_id
  ) AS pa ON p.id = 1 AND p.id = pa.product_id
;



-- Для запросов по нескольким товарам.
-- Возвращает путь имен категорий, полный url товара, атрибуты.

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
  cte.names_path,
  CONCAT(cte.url_path, '/', p.slug) AS url,
  pa.attributes
FROM shop.products AS p
       JOIN categories_cte AS cte ON p.id IN (1, 2) AND cte.id = p.category_id
       JOIN (
    SELECT product_id, JSON_OBJECTAGG(attribute_name, attribute_value) AS attributes
    FROM shop.products_attributes
    WHERE product_id IN (1, 2)
    GROUP BY product_id
  ) AS pa ON p.id IN (1, 2) AND p.id = pa.product_id
;
