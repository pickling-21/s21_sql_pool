SELECT m.id AS menu_id
  FROM menu m
         LEFT JOIN person_order po
         ON m.id = po.menu_id
 WHERE po.id IS NULL
 ORDER BY 1;

