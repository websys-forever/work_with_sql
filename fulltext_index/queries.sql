-- Создание FULLTEXT индексов в режиме INPLACE,
-- чтобы не блокировать доступ на время создания индексов
-- индексы уже добавлены в базу

ALTER TABLE traktors.ppi_position_import
  ADD FULLTEXT INDEX (ppi_name),
  ALGORITHM INPLACE
;

ALTER TABLE traktors.positions_models
  ADD FULLTEXT INDEX (mod_name),
  ALGORITHM INPLACE
;

ALTER TABLE traktors.technical_details_fields
  ADD FULLTEXT INDEX (tdf_name),
  ALGORITHM INPLACE
;

-- Запрос на полнотекстовый поиск

set @searchStr = 'Прицеп';
select
  -- для наглядности выводятся все столбцы
  *
from
  positions_models pm,
  ppi_position_import ppi,
  technical_details td,
  technical_details_fields tdf
where pm.mod_ppi_id=ppi.ppi_id
  and tdf.tdf_id=td.tch_property_id
  and td.tch_mod_id=pm.mod_id
  and (
    match (pm.mod_name) against (@searchStr)
    or
    match (ppi.ppi_name) against (@searchStr)
    or
    match (tdf.tdf_name) against (@searchStr)
  )
;