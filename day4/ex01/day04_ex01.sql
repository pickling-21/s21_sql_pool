SELECT name
  FROM v_person_male
 UNION ALL
SELECT name
  FROM v_person_female
 ORDER BY name;


