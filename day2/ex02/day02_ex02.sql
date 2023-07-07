SELECT (CASE WHEN p.name IS NULL THEN '-' ELSE p.name END) AS person_name, visit_date,
       (CASE WHEN pz.name IS NULL THEN '-' ELSE pz.name END) AS pizzeria_name
  FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS pv
         FULL OUTER JOIN person AS p
         ON p.id = pv.person_id
         FULL OUTER JOIN pizzeria AS pz
         ON pz.id = pv.pizzeria_id
 ORDER BY 1, 2, 3;