CREATE INDEX idx_person_name ON person USING btree (UPPER(name));

-- DROP INDEX idx_person_name;
SET enable_seqscan = OFF;
EXPLAIN ANALYSE
SELECT name
  FROM person
 ORDER BY (upper(name));