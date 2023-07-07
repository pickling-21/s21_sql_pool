SELECT p.name, COUNT(*) AS count_of_visits
  FROM person_visits
         JOIN person p
         ON person_visits.person_id = p.id
 GROUP BY p.name
 ORDER BY count_of_visits DESC, p.name
 LIMIT 4;