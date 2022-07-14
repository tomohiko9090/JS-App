-- START TRANSACTION; -- ①
-- START TRANSACTION ISOLATION LEVEL SERIALIZABLE; -- ①

UPDATE account 
    SET balance = balance - 100 -- 6番さんに100円引く
    WHERE emp_id = 6;

\! sleep 5
UPDATE account 
    SET balance = balance + 100 -- 8番さんに100円加える
    WHERE emp_id = 8;

-- COMMIT; -- ③
SELECT * FROM account;