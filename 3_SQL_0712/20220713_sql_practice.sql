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



select e.emp_id, e.emp_name, d.dept_id, d.dept_name
    from employee e join department d on e.dept_id = d.dept_id;

select d.dept_id, d.dept_name, e. emp_id, e.emp_name
    from department d join employee e on d.mgr_id = e.emp_id;

select d.dept_id, d.dept_name, d.adept_id, d2.dept_name
    from department d join department d2 on d.adept_id = d2.dept_id;

select e.emp_id, e.emp_name, d.dept_id, d.dept_id, d.dept_name, d.mgr_id, e2.emp_name
    from employee e join department d on e.dept_id = d.dept_id
    join employee e2 on d.mgr_id = e2.emp_id; 

select distinct e.emp_id, e.emp_name, p.prod_id, p.prod_name, c.cust_id, c.cust_name
    from employee e
    join packedsales ps on e.emp_id = ps.emp_id
    join customer c on ps.cust_id = c.cust_id
    join sales s on ps.psales_no = s.psales_no
    join product p on s.prod_id = p.prod_id
ORDER by e.emp_id;

select d.dept_id, d.dept_name, count(*), sum(e.sal), avg(e.sal), min(e.sal), max(e.sal)
    from employee e JOIN department d on e.dept_id = d. dept_id
    GROUP by d.dept_id, d.dept_name
    order by d.dept_id;

select e.emp_id, e.emp_name, d.dept_id, d.dept_name
    from employee e 
    join department d 
    USING(dept_id); #ここの列名が一緒なときはこれが使える

select e.emp_id, e.emp_name, d.dept_id, d.dept_name
    from employee e 
    natural join department d; #

select * from employee cross join department;

select e.emp_id, e.emp_name, d.dept_id, d.dept_name
    from employee e 
    left join department d on e.dept_id = d.dept_id;

select e.emp_id, e.emp_name, d.dept_id, d.dept_name
    from employee e right join department d on e.dept_id = d.dept_id;

select e.emp_id, e.emp_name, d.dept_id, d.dept_name
    from employee e full join department d on e.dept_id = d.dept_id;





-- 1
select c.cust_name, c.address, p.delivery_date
    from customer c
    join packedsales p on c.cust_id = p.cust_id;

-- 2
select p.prod_name, s.quantity*s.price as amount
    from customer c
    join sales s on p.prod_id = s.prod_id
    WHERE s.quantity >= 3;

-- 3
select ps.psales_no, ps.psales_date, ps.total, prod_id, s.quantity, s.price
    from customer c
    join packedsales ps on c.cust_id = ps.cust_id
    join sales s on ps.psales_no = s.psales_no
    where c.cust_name like '田中%';

-- 4
select e.emp_id, e.emp_name, avg(ps.total)
    from packedsales ps
    join employee e on ps.emp_id = e.emp_id
    group by e.emp_id
    order by e.emp_id;

-- 5
select s.prod_id, p.prod_name, sum(s.price), sum(s.quantity)
    from sales s
    join product p on s.prod_id = p.prod_id
    group by s.prod_id, p.prod_name
    having sum(s.price) >= 500000
    order by s.prod_id, p.prod_name;

-- 6
select p.prod_name, sum(s.quantity*s.price) as total
    from product p
    join sales s on p.prod_id = s.prod_id
    group by p.prod_name
    order by total desc;

-- 7
SELECT c.cust_name, ps.cust_address, ps.delivery_date, p.prod_name, s.quantity
    from packedsales ps
    join customer c on ps.cust_id = c.cust_id
    join sales s on ps.psales_no = s.psales_no
    join product p on s.prod_id = p.prod_id
    where ps.psales_no = 3;





-- <employee>
--  emp_id | dept_id |  emp_name   |  birthday  |  hiredate  | sex |   sal   |  comm 

-- <department>
--  dept_id | dept_name |  loc | mgr_id | adept_id 

-- <product>
--  prod_id | prod_name | model_no |   cost   | discount 

-- <customer>
--  cust_id |  cust_name  |   address   |   tel   |   fax      

-- <packedsales>
--  psales_no | psales_date | emp_id | cust_id |   cust_address  |   cust_tel   | delivery_date | delivery_time |   total   | carriage | excise  

-- <sales>
--  sales_no | psales_no | prod_id | quantity |  price 












