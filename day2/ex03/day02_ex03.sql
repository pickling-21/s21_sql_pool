  WITH gs AS (SELECT gs::date AS missing_date FROM generate_series('2022-01-01', '2022-01-10', INTERVAL '1 day') AS gs)
SELECT missing_date::date
  FROM gs
         LEFT JOIN (SELECT visit_date, person_id FROM person_visits) AS pv
         ON gs.missing_date = pv.visit_date AND pv.person_id IN (1, 2)
 WHERE visit_date IS NULL
 ORDER BY 1;

