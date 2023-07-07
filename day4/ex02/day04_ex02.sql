CREATE VIEW v_generated_dates
AS
SELECT dates::date
  FROM generate_series('01.01.2022'::date, '31.01.2022'::date, INTERVAL '1 day') AS dates
 ORDER BY dates::date;


-- DROP VIEW v_generated_dates