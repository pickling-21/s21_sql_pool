SELECT dates AS missing_date
  FROM v_generated_dates vgd EXCEPT
SELECT visit_date
  FROM person_visits
 ORDER BY 1;