SELECT pizza_name, price, pz.name AS pizzeria_name, visit_date
  FROM menu m
         JOIN pizzeria pz
         ON m.pizzeria_id = pz.id
         JOIN person_visits pv
         ON pz.id = pv.pizzeria_id
         JOIN person p
         ON pv.person_id = p.id
 WHERE p.name = 'Kate'
   AND (price >= 800 AND price <= 1000)
 ORDER BY 1, 2, 3


