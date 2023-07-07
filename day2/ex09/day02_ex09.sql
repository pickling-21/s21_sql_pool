SELECT p.name
  FROM person p
         JOIN(SELECT po.person_id
                FROM person_order po
                       JOIN menu m
                       ON po.menu_id = m.id
               WHERE m.pizza_name IN ('pepperoni pizza', 'cheese pizza')
               GROUP BY po.person_id
              HAVING COUNT(DISTINCT m.pizza_name) = 2) AS p2
    -- группируем по id и смотрим чтобы количество заказанных пицц у каждого id было 2
         ON p2.person_id = p.id
 WHERE p.gender = 'female'
 ORDER BY 1

