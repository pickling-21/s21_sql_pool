SELECT (CASE WHEN p.name IS NULL THEN '-' ELSE p.name END) AS person_name, visit_date,
       (CASE WHEN pz.name IS NULL THEN '-' ELSE pz.name END) AS pizzeria_name
  FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '01.01.2022' AND '03.01.2022') AS pv
           FULL OUTER JOIN person AS p
           ON p.id = pv.person_id
           FULL OUTER JOIN pizzeria AS pz
           ON pz.id = pv.pizzeria_id
ORDER BY 1, 2, 3;