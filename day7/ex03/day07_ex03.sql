  WITH visits_orders AS ((SELECT pz.name AS name, COUNT(*) AS count
                            FROM person_order po
                                   JOIN menu m
                                   ON po.menu_id = m.id
                                   JOIN pizzeria pz
                                   ON m.pizzeria_id = pz.id
                           GROUP BY pz.name
                           ORDER BY count DESC)
   UNION
  (SELECT pz.name AS name, COUNT(*) AS count
     FROM person_visits pv
            JOIN pizzeria pz
            ON pv.pizzeria_id = pz.id
    GROUP BY pz.name
    ORDER BY count DESC))
SELECT name, SUM(count) AS total_count
  FROM visits_orders
 GROUP BY name
 ORDER BY total_count DESC, name