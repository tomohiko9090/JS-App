-- <insertについて>
-- insertする前に \d　テーブル名で型チェック！
-- 外部キー制約を調べるべき！

-- insert into 表名 values(値1, 値2, 値3,,,)
-- insert into 表名(列名1, 列名2, 列名3,,,)  values(値1, 値2, 値3,,,)

insert into employee values (20, 40, '山田 花子', '1980-01-02', current_date, 2, 4000, null);
select * from employee;

-- デフォルト値...値を入れなかった時に勝手に入れられる値を設定しておくことができる

insert into employee(emp_id, emp_name) values(21, '渡辺 健一');

insert into department(dept_id, dept_name, loc, mgr_id, adept_id)
    select dept_id + 5, '第2' || dept_name, loc, mgr_id, dept_id -- 表名がくる場所！'第2' || dept_nameが値の結合
    from department; -- ここは対象の表

select * from department;

-- 演習
insert into employee values (100, 60, '', '1997-04-05', current_date, 1, 9999, null);
select * from employee;

insert into department values (60, 'R&D', '福井県大野市', 0, 20);




-- <update> 
-- UPDATE 表名 
--      SET 列名１=値１, 列名２=値２, 列名３=値３, … WHERE 選択条件
-- UPDATE、deleteは、細かく副問い合わせをする時は、副問い合わせを最初にselectしてからやるとやりやすい！！

select * from employee;

update employee set sal = sal * 1.2; -- 全部1.2倍に給料をベースアップ

update employee set sal = sal - 1000 where sal >= 5000; -- 給料を1000円減らす

update employee set sal = (SELECT avg(sal) from employee) where dept_id = 40; -- 40番を平均給与額にする

update employee set birthday = null;

UPDATE employee set sal = 4000, dept_id = 50 where dept_id = 40; -- 給与を4000にして、idを40にする

-- 演習
select * from department;

UPDATE department 
    set loc = '神奈川県川崎市'
    where dept_id >= 20 and dept_id < 30; 

update department
    set mgr_id = (select emp_id from employee where sal = (SELECT min(sal) from employee))
    where adept_id = 40;


-- <deleate>
-- DELETE FROM 表名 
--      WHERE 選択条件
-- なんとdeleteでは、記憶域がら開放されていない！記憶域が解放できるのは、次のtruncate
select * from employee;
delete from employee where sal >= 5000;

delete from employee;

-- 演習
SELECT * from product;

DELETE 
    from product
    where discount is null;
 
delete from product;


-- <trancate> 
-- 全ての行を削除
-- 記憶域を解放
TRUNCATE department;




-- <create>
-- データベースを作る
-- CREATE DATABASE データベース名
create DATABASE testing;
\l -- データベース一覧
\c testing -- 参照するデータベースを変更する

-- <DROP>
DROP DATABASE データベース名
\c sample; -- データベースを参照している時はそのデータベースを消すことができないよ！
drop database testing;



-- <create>
-- CREATE TABLE 表名(
--     列名１ データ型(桁数) [制約 デフォルト値],
--     列名２ データ型(桁数) [制約 デフォルト値],
--     列名３ データ型(桁数) [制約 デフォルト値],
--     ・・・
--     表制約１,
--     表制約２,
-- )

-- サンプルdbを削除→サンプルdbを作成→サンプルデータ読み込み→employeeテーブルを削除→employeeテーブルをを作成
drop database sample;
CREATE DATABASE sample;
\c sample
\i OSDBdata.sql
drop table employee;
CREATE TABLE employee(
    emp_id INTEGER PRIMARY KEY,
    dept_id INTEGER NOT NULL REFERENCES department,
    emp_name VARCHAR(20) NOT NULL,
    birthday DATE,
    hiredate DATE NOT NULL DEFAULT CURRENT_DATE,
    sex INTEGER NOT NULL CHECK(sex IN(1, 2)) DEFAULT 1,
    sal NUMERIC(9,2) NOT NULL CHECK(sal >= 0),
    comm NUMERIC(7,2),
    UNIQUE (dept_id, emp_name)
);

INSERT into employee 
    VALUES(100, 20, '丸野 和夫', null, DEFAULT, 1, 2000, null);

INSERT INTO employee 
    VALUES(100, 30, '山田 真弓', NULL, '2004-04-04', 2, 2200, NULL); -- これはエラーになる（emp_idは主キーだから）

INSERT INTO employee 
    VALUES(110, 30, '山田 真弓', NULL, '2004-04-04', 2, 2200, NULL);  

INSERT into employee VALUES(112, 40, '山田 真弓', null, '2004-04-04', 2, 2200, null);

INSERT INTO employee VALUES(120, 100, '鈴木 浩二', NULL, '2004-04-04', 1, 2000, NULL);  -- これはエラーになる

INSERT INTO employee VALUES(120, 20, '鈴木 浩二', NULL, '2004-04-04', 1, 2000, NULL);

DELETE from department where dept_id = 50; 

外部キーは難しいのでもう一度勉強した方が良さそう

delete from employee where dept_id = 20; 

delete from department where dept_id = 20; -- 部署削除（いきなり部署削除はエラーになってしまう。）


-- <alter table>
-- alter table 表名 変更内容

-- <トランザクション>
-- ①トランザクション開始　 START TRANSACTION
-- ②トランザクション終了　 COMMIT
-- ③トランザクション取消し ROLLBACK

-- 1.(自らやり直しパターン)何か障害が起こったため、一回最初からやることにした場合
START TRANSACTION; -- ①
DELETE FROM customer; -- 顧客表すべてを消す
UPDATE employee SET sal = sal + 1000; -- 担当者表全ての担当者の給与に1000を加える
SELECT * FROM customer ORDER BY cust_id; -- 消えているのを確認
SELECT * FROM employee ORDER BY emp_id; -- 1000円加わっているのを確認
ROLLBACK; -- ②
SELECT * FROM customer ORDER BY cust_id; -- 顧客表が消えてないことを確認
SELECT * FROM employee ORDER BY emp_id; -- 担当者表が消えていないことを確認

-- 2.(エラーでやり直しパターン)commitする前に一度エラーを起こしてみる
START TRANSACTION; -- ①
DELETE FROM customer; -- 顧客表すべてを消す
UPDATE employee SET sal = sal + 1000; -- 担当者表全ての担当者の給与に1000を加える
SELECT * FROM customer ORDER BY cust_id; -- 消えているのを確認
SELECT * FROM employee ORDER BY emp_id; -- 1000円加わっているのを確認
SELECT a; -- わざとエラー起こしてみる
COMMIT; -- ②トランザクション終了
SELECT * FROM customer ORDER BY cust_id; -- 顧客表が消えてないことを確認
SELECT * FROM employee ORDER BY emp_id; -- 担当者表が消えていないことを確認

-- 3. (commit成功パターン)実際にcommitをおこなう
START TRANSACTION; -- ①
DELETE FROM customer; -- 顧客表すべてを消す
UPDATE employee SET sal = sal + 1000; -- 担当者表全ての担当者の給与に1000を加える
SELECT * FROM customer ORDER BY cust_id; -- 消えているのを確認
SELECT * FROM employee ORDER BY emp_id; -- 1000円加わっているのを確認
COMMIT;
SELECT * FROM customer ORDER BY cust_id; -- 消えているのを確認
SELECT * FROM employee ORDER BY emp_id; -- 1000円加わっているのを確認

-- トランザクション実験
-- 1. 2つターミナルを開く
-- 2. 1つ目のターミナルでトランザクションのあるファイルを読み込み
-- 3. すぐに、2つ目ののターミナルで同じトランザクション処理を行う
-- 4. すると、1つ目のターミナルでトランザクション処理が終わるのを待ってから、2つ目のターミナルでのトランザクション処理が始まった！
