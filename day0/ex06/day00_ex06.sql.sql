SELECT (SELECT name FROM person WHERE person_id = id) AS name,
       (CASE WHEN (SELECT name FROM person WHERE person_id = id) = 'Denis' THEN 'true' ELSE 'false' END) AS check_name
  FROM person_order
 WHERE order_date = '07.01.2022'
   AND (menu_id = 13 OR menu_id = 14 OR menu_id = 18);