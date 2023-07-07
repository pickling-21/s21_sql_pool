SELECT p.name AS person_name1, p2.name AS person_name2, p.address AS common_address
  FROM person p
         JOIN person p2
         ON p.address = p2.address AND p.id > p2.id
 ORDER BY 1, 2