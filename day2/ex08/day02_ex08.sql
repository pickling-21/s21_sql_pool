SELECT p.name
  FROM person AS p
         INNER JOIN person_order po
         ON p.id = po.person_id
         INNER JOIN menu m
         ON po.menu_id = m.id
 WHERE p.address IN ('Moscow', 'Samara')
   AND p.gender = 'male'
   AND m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
 ORDER BY 1 DESC;