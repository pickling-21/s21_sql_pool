SELECT gs::date AS missing_date
  FROM (SELECT visit_date, person_id FROM person_visits WHERE (person_id = 1 OR person_id = 2)) AS pv
           RIGHT JOIN generate_series('01.01.2022'::date, '10.01.2022'::date, INTERVAL '1 day') AS gs
           ON DATE(gs::date) = pv.visit_date
 WHERE visit_date IS NULL
 ORDER BY 1;

