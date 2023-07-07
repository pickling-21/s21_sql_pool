   SELECT order_date AS action_date, name AS person_name
     FROM person_order AS po
            JOIN person p
            ON po.person_id = p.id
INTERSECT
   SELECT visit_date, name AS person_name
     FROM person_visits AS pv
            JOIN person p2
            ON pv.person_id = p2.id
    ORDER BY action_date ASC, person_name DESC;