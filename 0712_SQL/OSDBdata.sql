DROP TABLE packedsales CASCADE;
DROP TABLE sales CASCADE;
DROP TABLE employee CASCADE;
DROP TABLE customer CASCADE;
DROP TABLE product CASCADE;
DROP TABLE department CASCADE;
DROP TABLE nextsalary CASCADE;
DROP TABLE account CASCADE;

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  売上テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE packedsales (
    psales_no           INTEGER    PRIMARY KEY  -- 売上NO
  , psales_date         DATE                    -- 売上日付
  , emp_id              INTEGER                 -- 担当者ID
  , cust_id             INTEGER                 -- 顧客ID
  , cust_address        VARCHAR(40)             -- 届け先住所
  , cust_tel            VARCHAR(20)             -- 届け先電話番号
  , delivery_date       DATE                    -- 届け予定日
  , delivery_time       TIME                    -- 届け予定時刻
  , total               NUMERIC(9,2)            -- 売上合計金額
  , carriage            NUMERIC(9,2)            -- 送料
  , excise              NUMERIC(9,2)            -- 消費税額
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  売上明細テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE sales (
    sales_no            INTEGER                       -- 売上明細NO
  , psales_no           INTEGER                       -- 売上NO
  , prod_id             INTEGER                       -- 商品ID
  , quantity            NUMERIC(9,2)                  -- 数量
  , price               NUMERIC(9,2)                  -- 売価
  , PRIMARY KEY(sales_no, psales_no)
);                                      

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  担当者テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE employee (
    emp_id              INTEGER       PRIMARY KEY   -- 担当者ID
  , dept_id             INTEGER                     -- 部門ID
  , emp_name            VARCHAR(20)                 -- 担当者名
  , birthday            DATE                        -- 生年月日
  , hiredate            DATE                        -- 入社年月日
  , sex                 INTEGER                     -- 性別 （ 1:男  2:女 ）
  , sal                 NUMERIC(9,2)                -- 給与額
  , comm                NUMERIC(7,2)                -- コミッション
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  部門テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE department (
    dept_id             INTEGER       PRIMARY KEY     -- 部門ID
  , dept_name           VARCHAR(20)                   -- 部門名
  , loc                 VARCHAR(32)                   -- 場所
  , mgr_id              INTEGER                       -- 管理者ID
  , adept_id            INTEGER                       -- 管理部門ID
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  顧客テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE customer (
    cust_id             INTEGER       PRIMARY KEY     -- 顧客ID
  , cust_name           VARCHAR(20)                   -- 顧客名
  , address             VARCHAR(40)                   -- 住所
  , tel                 VARCHAR(20)                   -- 電話番号
  , fax                 VARCHAR(20)                   -- FAX番号
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  商品テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE product (
    prod_id             INTEGER        PRIMARY KEY    -- 商品ID
  , prod_name           VARCHAR(20)                   -- 商品名
  , model_no            VARCHAR(20)                   -- 型番
  , cost                NUMERIC(9,2)                  -- 標準単価
  , discount            NUMERIC(9,2)                  -- 限界割引率
);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  顧客テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE customer;
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(1,'阪上 徹','和歌山県和歌山市','073-123-XXXX','073-123-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(2,'松坂 宏','東京都千代田区','03-3158-XXXX','03-3258-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(3,'北島 浩二','大阪府大阪市北区','06-1234-XXXX','06-1234-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(4,'永井 光夫','東京都渋谷区','03-3124-XXXX','03-0124-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(5,'関根 修一','大阪府泉佐野市','0724-99-XXXX','0724-99-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(6,'木田 直美','東京都中央区','03-3333-XXXX',NULL);
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(7,'片桐 昇','東京都新宿区','03-1111-XXXX','03-1111-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(8,'田中 正敏','東京都品川区','03-2222-XXXX','03-2222-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(9,'西口 和夫','東京都目黒区下目黒','03-3333-XXXX','03-3333-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(10,'山口 克巳','東京都大田区','03-4444-XXXX','03-4444-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(11,'加藤 昭夫','神奈川県川崎市','044-505-XXXX','044-505-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(12,'石橋 健太郎','札幌市中央区','011-555-XXXX',NULL);
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(13,'米田 恵美子','東京都港区虎ノ門','03-3987-XXXX','03-3987-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(14,'松田 純一','東京都千代田区大手町','03-3975-XXXX','03-3975-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(15,'松下 晴彦','東京都板橋区','03-3123-XXXX','03-3123-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(16,'安井 和義','愛知県東海市','0560-448-XXXX','0560-448-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(17,'高沢 千夏','大阪府大阪市大淀区','06-6777-XXXX','06-6777-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(18,'島田 良子','東京都渋谷区','03-3698-XXXX',NULL);
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(19,'吉田 正也','神奈川県川崎市','044-888-XXXX','044-888-XXXX');
INSERT INTO customer(cust_id,cust_name,address,tel,fax)
VALUES(20,'藤田 幹夫','東京都中央区','03-3578-XXXX',NULL);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  商品テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE product;
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(101,'テレビ','A1111',25000,0.7);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(102,'ビデオ','B2222',12000,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(103,'MDプレーヤー','C3333',23500,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(104,'ステレオ','D4444',56000,0.7);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(105,'デジタルカメラ','E5555',18600,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(106,'プリンタ','F6666',23500,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(107,'電気シェーバー','G7777',13800,NULL);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(108,'ホイールマウス','H8888',8500,NULL);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(109,'アイロン','I9999',10000,0.8);
INSERT INTO product(prod_id,prod_name,model_no,cost,discount)
VALUES(110,'リモコン','J0000',5800,NULL);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  担当者テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE employee;
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(1,10,'羽生 章洋','1978/10/10','1990/12/17',1,800,100);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(2,10,'釜本 喜美子','1975/05/20','1991/02/20',2,1600,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(3,20,'安部 弘江','1974/06/01','1991/02/22',2,1250,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(4,20,'松村 秀和','1970/09/13','1991/04/02',1,2975,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(5,30,'萩原 恵理子','1985/03/16','2008/09/28',2,1250,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(6,30,'岡田 奈緒子','1983/12/24','2007/05/01',2,2850,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(7,30,'井上 尚志','1971/10/17','2000/11/15',1,2450,10);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(8,40,'西口 麻衣子','1986/12/14','2008/12/03',2,3000,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(9,40,'滝本 順三','1978/04/02','2004/12/18',1,5000,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(10,40,'工藤 新一','1990/02/10','1999/04/01',1,1500,NULL);
INSERT INTO employee(emp_id,dept_id,emp_name,birthday,hiredate,sex,sal,comm)
VALUES(11,90,'毛利 光太郎','1970/12/31','1990/04/01',1,8000,NULL);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  部門テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE department;
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(10,'営業部','東京都千代田区',1,30);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(20,'開発部','東京都港区',3,30);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(30,'企画部','東京都中央区',5,40);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(40,'管理部','東京都台東区',8,40);
INSERT INTO department(dept_id,dept_name,loc,mgr_id,adept_id)
VALUES(50,'製造部','東京都大田区',NULL,50);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  売上テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE packedsales;
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1001,'2001/07/13',1,1,'和歌山県和歌山市','073-123-XXXX','2001/07/18','10:00',90000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1002,'2001/07/14',1,2,'大阪府大阪市','06-6123-XXXX','2001/07/19','10:00',20000,0,1000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1003,'2001/07/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','2001/07/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1004,'2001/07/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','2001/07/21','10:00',180000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1005,'2001/07/18',3,5,'東京都千代田区大手町','03-3123-XXXX','2001/07/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1006,'2001/07/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','2001/07/23','10:00',30000,0,1500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1007,'2001/07/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','2001/07/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1008,'2001/07/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','2001/07/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1009,'2001/07/18',5,9,'東京都渋谷区広尾XX-X','03-3123-XXXX','2001/07/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1010,'2001/07/18',5,10,'東京都中央区日本橋','03-3123-XXXX','2001/07/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(1,'1994/07/13',1,1,'和歌山県和歌山市','073-123-XXXX','1994/07/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(2,'1994/07/14',1,2,'大阪府大阪市','06-6123-XXXX','1994/07/19','10:00',60000,0,1000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(3,'1994/07/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','1994/07/20','10:00',85000,0,4250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年８月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(4,'1994/08/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','1994/08/21','10:00',120000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(5,'1994/08/18',3,5,'東京都千代田区大手町','03-3123-XXXX','1994/08/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(6,'1994/08/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','1994/08/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(7,'1994/09/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','1994/09/24','10:00',60000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(8,'1994/09/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','1994/09/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(9,'1994/09/18',5,9,'東京都渋谷区広尾XX-X','03-3123-XXXX','1994/09/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(10,'1994/09/18',5,10,'東京都中央区日本橋','03-3123-XXXX','1994/09/27','10:00',24000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年１０月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(111,'1994/10/13',1,1,'和歌山県和歌山市','073-123-XXXX','1994/10/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(112,'1994/10/14',1,2,'大阪府大阪市','06-6123-XXXX','1994/10/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年１１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(113,'1994/11/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','1994/11/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(114,'1994/11/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','1994/11/21','10:00',60000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年１２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(115,'1994/12/18',3,5,'東京都千代田区大手町','03-3123-XXXX','1994/12/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(116,'1994/12/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','1994/12/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(217,'1995/01/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','1995/01/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(218,'1995/01/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','1995/01/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年４月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(219,'1995/04/18',5,9,'東京都渋谷区広尾XX-X','03-3123-XXXX','1995/04/26','10:00',60000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(220,'1995/04/18',5,10,'東京都中央区日本橋','03-3123-XXXX','1995/04/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(221,'1995/09/13',1,1,'和歌山県和歌山市','073-123-XXXX','1995/09/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(222,'1995/09/14',1,2,'大阪府大阪市','06-6123-XXXX','1995/09/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年１２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(223,'1995/12/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','1995/12/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(224,'1995/12/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','1995/12/21','10:00',120000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９６年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(325,'1996/03/18',3,5,'東京都千代田区大手町','03-3123-XXXX','1996/03/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(326,'1996/03/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','1996/03/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９６年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(327,'1996/07/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','1996/07/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(328,'1996/07/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','1996/07/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９６年１０月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(329,'1996/10/18',5,9,'東京都渋谷区広尾XX-X','03-3123-XXXX','1996/10/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(330,'1996/10/18',5,10,'東京都中央区日本橋','03-3123-XXXX','1996/10/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(431,'1997/02/13',1,1,'和歌山県和歌山市','073-123-XXXX','1997/02/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(432,'1997/02/14',1,2,'大阪府大阪市','06-6123-XXXX','1997/02/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年５月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(433,'1997/05/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','1997/05/20','10:00',115000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(434,'1997/05/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','1997/05/21','10:00',60000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年８月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(435,'1997/08/18',3,5,'東京都千代田区大手町','03-3123-XXXX','1997/08/22','10:00',25000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(436,'1997/08/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','1997/08/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年１１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(437,'1997/11/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','1997/11/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(438,'1997/11/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','1997/11/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９８年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(541,'1998/03/13',1,1,'和歌山県和歌山市','073-123-XXXX','1998/03/18','10:00',120000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(542,'1998/03/14',1,2,'大阪府大阪市','06-6123-XXXX','1998/03/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９８年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(543,'1998/07/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','1998/07/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(544,'1998/07/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','1998/07/21','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(545,'1998/07/18',3,5,'東京都千代田区大手町','03-3123-XXXX','1998/07/22','10:00',25000,0,1250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９８年１０月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(547,'1998/10/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','1998/10/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(548,'1998/10/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','1998/10/25','10:00',10000,0,500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９９年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(653,'1999/03/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','1999/03/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(654,'1999/03/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','1999/03/21','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(655,'1999/03/18',3,5,'東京都千代田区大手町','03-3123-XXXX','1999/03/22','10:00',75000,0,1250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９９年６月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(656,'1999/06/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','1999/06/23','10:00',30000,0,1500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(657,'1999/06/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','1999/06/24','10:00',40000,0,2000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９９年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(658,'1999/09/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','1999/09/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(659,'1999/09/18',5,9,'東京都渋谷区広尾XX-X','03-3123-XXXX','1999/09/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(660,'1999/09/18',5,10,'東京都中央区日本橋','03-3123-XXXX','1999/09/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(771,'2000/01/13',1,1,'和歌山県和歌山市','073-123-XXXX','2000/01/18','10:00',90000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(772,'2000/01/14',1,2,'大阪府大阪市','06-6123-XXXX','2000/01/19','10:00',20000,0,1000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(773,'2000/01/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','2000/01/20','10:00',85000,0,4250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年５月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(774,'2000/05/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','2000/05/21','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(775,'2000/05/18',3,5,'東京都千代田区大手町','03-3123-XXXX','2000/05/22','10:00',25000,0,1250);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(776,'2000/07/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','2000/07/23','10:00',30000,0,1500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(777,'2000/07/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','2000/07/24','10:00',40000,0,2000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(778,'2000/09/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','2000/09/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(779,'2000/09/18',5,9,'東京都渋谷区広尾XX-X','03-3123-XXXX','2000/09/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(780,'2000/09/18',5,10,'東京都中央区日本橋','03-3123-XXXX','2000/09/27','10:00',30000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年１２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(781,'2000/12/13',1,1,'和歌山県和歌山市','073-123-XXXX','2000/12/18','10:00',60000,0,3000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(782,'2000/12/14',1,2,'大阪府大阪市','06-6123-XXXX','2000/12/19','10:00',20000,0,1000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２００１年１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(883,'2001/01/18',2,3,'東京都港区赤坂2丁目','03-3123-XXXX','2001/01/20','10:00',85000,0,4250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(884,'2001/01/18',2,4,'東京都中央区銀座3丁目','03-3123-XXXX','2001/01/21','10:00',60000,0,3000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２００１年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(885,'2001/03/18',3,5,'東京都千代田区大手町','03-3123-XXXX','2001/03/22','10:00',50000,0,1250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(886,'2001/03/18',3,6,'東京都品川区西五反田XXX-XX','03-3123-XXXX','2001/03/23','10:00',30000,0,1500);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２００１年５月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(887,'2001/05/18',4,7,'東京都台東区下谷X-X-X','03-3123-XXXX','2001/05/24','10:00',40000,0,2000);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(888,'2001/05/18',4,8,'大阪市大淀区大淀南','06-6123-XXXX','2001/05/25','10:00',10000,0,500);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(889,'2001/05/18',5,9,'東京都渋谷区広尾XX-X','03-3123-XXXX','2001/05/26','10:00',45000,0,2250);

INSERT INTO packedsales(psales_no,psales_date,emp_id,cust_id,cust_address,cust_tel,delivery_date,delivery_time,total,carriage,excise)
VALUES(890,'2001/05/18',5,10,'東京都中央区日本橋','03-3123-XXXX','2001/05/27','10:00',6000,0,300);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  売上明細テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
TRUNCATE sales;
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1001,101,2,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1001,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1002,102,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1003,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1003,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,1003,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1004,104,3,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1005,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1006,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1007,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1007,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1008,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1009,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1009,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1010,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,1,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,1,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,2,102,3,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,3,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,3,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,3,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年８月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,4,104,2,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,5,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,6,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,7,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,7,106,2,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,8,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,9,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,9,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,10,110,4,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年１０月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,111,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,111,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,112,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年１１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,113,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,113,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,113,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,114,104,1,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９４年１２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,115,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,116,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,217,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,217,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,218,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年４月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,219,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,219,109,2,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,220,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,221,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,221,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,222,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９５年１２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,223,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,223,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,223,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,224,104,2,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９６年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,325,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,326,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９６年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,327,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,327,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,328,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９６年１０月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,329,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,329,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,330,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,431,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,431,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,432,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年５月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,433,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,433,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,433,106,2,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,434,104,1,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年８月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,435,105,1,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,436,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９７年１１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,437,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,437,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,438,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９８年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,541,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,541,103,3,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,542,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９８年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,543,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,543,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,543,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,544,104,1,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,545,105,1,25000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９８年１０月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,547,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,547,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,548,108,1,10000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９９年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,653,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,653,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,653,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,654,104,1,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,655,105,3,25000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９９年６月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,656,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,657,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,657,106,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  １９９９年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,658,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,659,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,659,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,660,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,771,101,2,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,771,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,772,102,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,773,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,773,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,773,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年５月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,774,104,1,60000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,775,105,1,25000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年７月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,776,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,777,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,777,106,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年９月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,778,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,779,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,779,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,780,110,5,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２０００年１２月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,781,101,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,781,103,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,782,102,1,20000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２００１年１月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,883,103,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,883,105,1,25000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(3,883,106,1,30000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,884,104,1,60000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２００１年３月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,885,105,2,25000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,886,106,1,30000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  ２００１年５月
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,887,102,1,20000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,887,106,1,20000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,888,108,1,10000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,889,106,1,30000);
INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(2,889,109,1,15000);

INSERT INTO sales(sales_no,psales_no,prod_id,quantity,price)
VALUES(1,890,110,1,6000);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -
UPDATE packedsales SET carriage = 100 
    where cust_tel NOT like '03%'
;    

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  来年給与テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE nextsalary (
      emp_id    INTEGER PRIMARY KEY
    , current   NUMERIC(9, 2)
    , next      NUMERIC(9, 2)
);
INSERT INTO nextsalary VALUES( 1,  800.00, 1000.00);
INSERT INTO nextsalary VALUES( 2, 1600.00,    0.00);
INSERT INTO nextsalary VALUES( 3, 1250.00);
INSERT INTO nextsalary VALUES( 4, 2975.00);
INSERT INTO nextsalary VALUES( 5, 1250.00,    0.00);
INSERT INTO nextsalary VALUES( 6, 2850.00);
INSERT INTO nextsalary VALUES( 7, 2450.00, 2500.00);
INSERT INTO nextsalary VALUES( 8, 3000.00, 2500.00);
INSERT INTO nextsalary VALUES( 9, 5000.00);
INSERT INTO nextsalary VALUES(10, 1500.00,    0.00);
INSERT INTO nextsalary VALUES(11, 8000.00, 6000.00);

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
--  口座テーブル
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -
CREATE TABLE account(emp_id INTEGER, balance INTEGER);
INSERT INTO account VALUES(6, 1000);
INSERT INTO account VALUES(8, 1000);
-- SELECT * FROM account;
