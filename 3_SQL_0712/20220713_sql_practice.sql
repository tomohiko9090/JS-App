-- <書く時の順番>
-- SELECT
--      FROM JOIN
--      ON
--      WHERE
--      GROUPBY
--      HAVING
--      ORDERBY

-- SELECT カラム名
-- FROM テーブル名1
-- JOIN テーブル名2
-- ON テーブル名1.結合キー列 = テーブル名2.結合キー列
-- JOIN テーブル名3
-- ON* テーブル名X.結合キー列 = テーブル名3.結合キー列

-- <実行順番>
-- FROM（どのテーブルかを選ぶ）
-- ON（テーブル同士がどのカラムで結合するかを選ぶ）
-- JOIN（結合するテーブルを選ぶ）
-- WHERE（選択する行を選ぶ）
-- GROUPBY（行ごとにまとめる。どの列でまとめるかを決める）
-- HAVING（GROUPBYでまとめたもののうち条件に合うものを抽出する）
-- SELECT（結果に出すカラムを選ぶ）
-- DISTINCT（重複をなくして結果を出す）
-- ORDERBY（順番を決める。どのカラムを昇順or降順にするか）
-- TOP（LIMIT）（上位何件を結果として出すか）

-- 問題1
select sum(cost), avg(cost), min(cost), max(cost) from product;

-- 問題2
select count(*), count(discount), count(distinct discount), sum(discount), avg(discount), min(discount), max(discount) from product;

-- 問題3
select count(*), count(discount), count(distinct discount), sum(discount), avg(discount), min(discount), max(discount) 
    from product 
    group by discount 
    order by discount;

-- 問題4
select discount, count(discount), count(distinct discount), sum(discount), avg(discount), min(discount), max(discount) 
    from product
    group by discount
    having count(discount) >= 5
    order by discount;

-- 問題5
select discount, count(discount), count(distinct discount), sum(discount), avg(discount), min(discount), max(discount) 
    from product 
    where cost >= 15000
    group by discount 
    order by discount;

-- 問題6
select emp_id, avg(total) from packedsales group by emp_id order by emp_id;

-- 問題7
select psales_date, sum(total) from packedsales group by psales_date order by psales_date desc limit(5);

-- 問題8
select distinct emp_id from packedsales order by emp_id;


-- 表の結合
<employee>
 emp_id | dept_id |  emp_name   |  birthday  |  hiredate  | sex |   sal   |  comm 

<department>
 dept_id | dept_name |  loc   | mgr_id | adept_id 

<product>
 prod_id |   prod_name    | model_no |   cost   | discount 


select e.emp_id, e.emp_name, d.dept_id, d.dept_name
    from employee e join department d on e.dept_id = d.dept_id;

select d.dept_id, d.dept_name, e. emp_id, e.emp_name
    from department d join employee e on d.mgr_id = e.emp_id;

select d.dept_id, d.dept_name, d.adept_id, d2.dept_name
    from department d join department d2 on d.adept_id = d2.dept_id;

select e.emp_id, e.emp_name, d.dept_id, d.dept_id, d.dept_name, d.mgr_id, e2.emp_name
    from employee e join department d on e.dept_id = d.dept_id
    join employee e2 on d.mgr_id = e2.emp_id; 

select distinct e.emp_id, e.emp_name, p.prod_id, p.