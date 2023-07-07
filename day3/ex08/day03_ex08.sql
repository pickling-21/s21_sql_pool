INSERT INTO menu (pizza_name, price, pizzeria_id, id)
SELECT 'sicilian pizza', 900, (SELECT id FROM pizzeria WHERE name = 'Dominos'), MAX(menu.id) + 1
  FROM menu

