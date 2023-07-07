(SELECT pz.name AS pizzeria_name
   FROM pizzeria pz
          JOIN person_visits pv
          ON pz.id = pv.pizzeria_id
          JOIN person p
          ON pv.person_id = p.id
  WHERE gender = 'female' EXCEPT ALL
 SELECT pz.name AS pizzeria_name
   FROM pizzeria pz
          JOIN person_visits pv
          ON pz.id = pv.pizzeria_id
          JOIN person p
          ON pv.person_id = p.id
  WHERE gender = 'male')
 UNION ALL
(SELECT pz.name AS pizzeria_name
   FROM pizzeria pz
          JOIN person_visits pv
          ON pz.id = pv.pizzeria_id
          JOIN person p
          ON pv.person_id = p.id
  WHERE gender = 'male' EXCEPT ALL
 SELECT pz.name AS pizzeria_name
   FROM pizzeria pz
          JOIN person_visits pv
          ON pz.id = pv.pizzeria_id
          JOIN person p
          ON pv.person_id = p.id
  WHERE gender = 'female')
 ORDER BY 1