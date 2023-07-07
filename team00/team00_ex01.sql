  WITH RECURSIVE
    r AS (SELECT ARRAY [point1] AS passed_points, point2 AS end_point, 2 AS count, cost AS total_cost
            FROM graph
           WHERE point1 = 'a'
           UNION
          SELECT array_append(passed_points, end_point) AS passed_points, point2 AS end_point, count + 1 AS count,
                 total_cost + cost AS total_cost
            FROM r
                   JOIN graph g
                   ON end_point = g.point1
           WHERE count < 5
             AND passed_points @> ARRAY [end_point] = FALSE),
    routes AS (SELECT total_cost, array_append(passed_points, end_point) AS tour
                 FROM r
                WHERE count = 5 AND end_point = 'a')
SELECT *
  FROM routes
 WHERE total_cost = (SELECT MIN(total_cost) FROM routes)
    OR total_cost = (SELECT MAX(total_cost) FROM routes)
 ORDER BY total_cost, tour;