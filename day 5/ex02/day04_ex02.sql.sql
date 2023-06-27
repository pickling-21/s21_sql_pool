CREATE INDEX idx_person_name ON person USING btree (UPPER(name));

-- DROP INDEX idx_person_name;
SET enable_seqscan =OFF;
EXPLAIN ANALYSE
SELECT name
FROM person
ORDER BY (upper(name));

-- CREATE INDEX ix_title2 ON movies (title text_pattern_ops);
-- The magic here is “text_pattern_ops” which allows
-- the B-Tree index over a “text” expression to
-- be used for pattern operators (LIKE and regular expressions).
-- The “text_pattern_ops” is called an Operator Class.
-- Note that this will work only for patterns with a fixed text prefix