SELECT DISTINCT name
  FROM person
         JOIN person_order po
         ON person.id = po.person_id
 ORDER BY name