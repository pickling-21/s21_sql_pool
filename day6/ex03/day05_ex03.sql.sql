
CREATE UNIQUE INDEX idx_person_discounts_unique ON person_discounts (person_id, pizzeria_id);
-- DROP INDEX idx_person_discounts_unique

SET enable_seqscan =OFF;
EXPLAIN ANALYSE
SELECT person_id, pizzeria_id
FROM person_discounts
WHERE person_id = 8 AND pizzeria_id = 19;

