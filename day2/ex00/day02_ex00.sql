SELECT name AS pizzeria_name, rating
  FROM pizzeria p
         LEFT JOIN person_visits pv
         ON p.id = pv.pizzeria_id
-- без NULL visit_date показывает строки для которых не нашлось пары в правой таблице
 WHERE pv.visit_date IS NULL