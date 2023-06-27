SELECT person_id
  FROM person_order
 WHERE order_date = '07.01.2022' EXCEPT ALL
SELECT person_id
  FROM person_visits
 WHERE visit_date = '07.01.2022'