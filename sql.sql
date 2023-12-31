SHOW DATABASES;
USE sakila;
SHOW TABLES;
-- describe table describe the structure of table(columns).
DESCRIBE actor;-- desc short form of describe;
-- how to fetch the  whole table.
SELECT * FROM actor;
-- how to fetch the specific column of table.
SELECT actor_id,first_name FROM actor;
DESC actor_info;
-- projection(when we  select columns) and selaction(rows).
SELECT * FROM actor_info;
SELECT actor_id,actor_id+5 FROM actor_info;-- we can also manipulate the column values as our wish even this does not effect the real data;
-- * is for all columns selection(projection),where is for row (selction).
SELECT * FROM actor_info WHERE actor_id=2;
SELECT actor_id,first_name FROM actor_info WHERE actor_id<=2;
SELECT * FROM actor_info WHERE first_name="ed"; 
-- statement v/s clause difference.
-- where clause,internal.+world database.
-- dbms vs rdbms
-- acid property.what,where use.   

SHOW DATABASES;
USE sakila;
SHOW TABLES;
SHOW DATABASES;
USE WORLD;
SHOW TABLES;
SELECT * FROM country;
-- dql select statement.
SELECT DATABASE();
USE sakila;
SHOW COLUMNS FROM actor_info;
SELECT * FROM actor;
SELECT* FROM sakila.actor;
SELECT name FROM sakila.language;
-- where is a clause used to filter data.alter
SELECT * FROM language WHERE name='english';
SELECT * FROM language WHERE language_id>3;
SELECT * FROM language WHERE language_id!=3;
-- <> this is also not egual to.alter
-- comparision of character.
SELECT * FROM language WHERE name>'iu';
SELECT * FROM language WHERE name>'i';
SELECT first_name FROM actor WHERE first_name >"b";
SELECT * FROM film;
SELECT * FROM  film WHERE title LIKE "%dinosaur"; -- end
SELECT * FROM  film WHERE title LIKE "%dinosaur%"; -- middle
SELECT * FROM  film WHERE title LIKE "dinosaur%"; -- front
SELECT * FROM  film WHERE title LIKE "a%"; 
SELECT * FROM  film WHERE title LIKE "%dinosaur"; 
SELECT * FROM film WHERE description LIKE "%drama%";
SELECT title,description,release_year FROM film WHERE description LIKE "a%s";
DESC film;
SELECT * FROM film WHERE title LIKE "a_e%";
SELECT * FROM film WHERE title LIKE "a_i%";
SELECT  title,film_id,release_year,description FROM film WHERE title LIKE "_c%";-- 1
SELECT  title,film_id,release_year,description FROM film WHERE title LIKE "a%an";-- 2
SELECT  title,film_id,release_year,description FROM film WHERE title LIKE "%t___";-- 3
SELECT  title,film_id,release_year,description FROM film WHERE title LIKE "_f_i%egg";-- 4
SELECT  title,film_id,release_year,description FROM film WHERE title LIKE "__a__ %";-- 5
USE sakila;
-- logical operators i.e and ,or, not
SELECT * FROM actor WHERE first_name="nick" AND actor_id=2;-- and
SELECT * FROM actor WHERE first_name="nick" OR actor_id=30;-- or
SELECT * FROM actor_info WHERE film_info LIKE"animation%" AND first_name="christian";-- and with like
SELECT * FROM actor_info WHERE first_name LIKE "christian";-- can be written as
SELECT * FROM actor_info WHERE film_info LIKE "animation%" AND first_name="goldie" OR first_name="nick";-- like ,and,or
SELECT * FROM actor_info WHERE film_info LIKE "animation%" OR first_name="goldie" AND first_name="nick";-- reverse of 68 line
SELECT * FROM film_list;
SELECT category,rating,title FROM film_list WHERE category LIKE "sci-fi" AND rating LIKE "pg";-- we can directly use like without percentage when we have exact word
SELECT category,rating,title FROM film_list WHERE (category LIKE "sci-fi" OR category LIKE "family") AND rating LIKE "pg";-- priority --- and---or
select (2+2)*4;
select 2+2*4;
select * from actor;
-- --------------------------------------------------------where+between-----------------------------------------------------------
select * from actor where actor_id between 1 and 5;
select * from actor where actor_id between 5 and 1;-- no meaning as first term should be small and second should be greater
select * from actor where first_name between 'b' and 'd';
select * from actor where actor_id=1 or actor_id=5;-- same can be written by using IN(--,---) shown in line 81
select * from actor where actor_id in(1,5,10,56,45,36);
-- -------------------------------not--------------------------------------
select * from actor where actor_id!=5;
select * from actor where not(actor_id=5);
-- ---------------------------------------perform the given statements---------------------------------------------------------
use sakila;
select * from actor;
select * from actor where actor_id between 2 and 7 and (first_name="nick" or first_name="ed");-- 1
select * from actor where  not(last_name like "%a%e%");-- 2
select * from actor where not(first_name="grace"or first_name="joy"or first_name="mathew") and actor_id<15;-- 3
select * from actor where  not(last_name like "%a%"  and first_name like "%i%") and actor_id between 10 and 20;-- 4
-- -------------------------------------------------28aug------------------------------------------------------------------
use sakila;
select * from city where (city_id=3 or city_id=4) and country_id=60;
select * from film_list;
select fid,title from film_list where fid<7 and  not(fid=4 or fid=6);
-- -----------------------------------------if we use like then we don't use % in start of query-----------------
-- -------------------------------------------------------------------sorting-------------------------------------
-- -------------------------------------------we use orderby to sort the data in asscending or decending order---------------
select * from film_list order by category desc;
desc film_list;
select * from film_list order by 4;-- -----------sort directly by column number of table-------------------
select fid,title, category from film_list order by 2 ;-- sort as per given colummns in query---------------
select * from address order by district;
select district, address_id,address from address order by district ,address_id desc;
select district, address_id,address from address order by district desc,address_id desc;
select * from address;
-- limit for records limit the record as you want----------------------------------------
select * from address limit 3 ;
-- offset- is used to skip the record from start-------------------------------------------------------
select * from address limit 3,2 ;-- with offset keyword use--------------------
select * from address limit 5 offset 3;-- with offset keyword----------------------
-- dual table is the dummy table in which we can check our logic and things but in exact they are empty tables but exist in database with dummy one row and column-----------------
select 2+2 from dual;
-- we cannot use any function on this table as it is empty------------------------
select now() from dual;-- now()is a function that fetch date and time  from our system-------------
-- concat ->combinig two columns
-- concat_ws->combine more than 2 columns ----------------------------------
-- substring-> 

-- ----------------------------------------------4sep-------------------------------------------------------------------
--  stringfunction---
select length ("tanu") from dual;
select char_length("my dream world")from dual;
select concat("d","5","g") from dual;
select concat_ws("-","hello","bander","kaha") from dual;
select ucase("hi");
select substr(substr("hello",1,3),2); -- positive from left to right and negative from right to left------//nested substring
select substr("hello",-1,3);-- for negative
select substr("hello",1,3);-- for positive
select instr("tanu","n"); -- to know the index of letter in a word-------
select locate("a","rajasthan",3);-- first define letter then string then starting index
select ltrim("         abc");-- ltrim removes the whitespace from string from left side
select rtrim("abc        ");-- rtrim for right side
select trim(leading" " from "       xyz        ");-- form start
select trim(trailing" " from "       xyz        ");-- from ending
select trim(both"z" from "zz zz         z");-- first 2z removed and then only last z is removed
select lpad("hello",7,"#"); -- for left side addition to male character equal to the given number
select lpad("hellooooo",7,"#");-- it also remove letter from word to make them equal to given length
select replace("ssas","s","t"); -- for replacement of digits in word

use sakila;
desc customer;
select count(*) from language; -- count number of records in  table

select substr('hello motuu',-3);


-- -----------------------------------------------------------------Data Manipulation Laanguage---------------------------------------------------------
-- c :create
-- r:read
-- u:update
-- d:delete
insert into language values(6 ,"portuguese",now());
desc language;
select * from language;
-- ----------------------------------------------5sep--------------------------------------------------------------
use sakila;
desc language;
select * from language;
insert into language  values(8,"india",now()); -- now()directly fetch the date and time from the system;
select * from language;
insert into language  values(9,"indonesia",'2020-09-26 10:35:00');
select * from language;
insert into language  values(9,"indonesia",'2020-09-26 10:35:00'); -- duplicate error 
insert  ignore into language  values(9,"indonesia",'2020-09-26 10:35:00'); -- warning occur and does not effect the table
insert  ignore into language  values(9,"indonesia",'2020-09-26 10:35:00',0); -- warning occur that one column is extra
-- ---------------------------------------------------------------2nd method for data inertion--------------------------------------
insert into language (language_id,last_update,name) values (11,now(),'russia');
select * from language;
desc language;
insert into language (name) values ('loseangles');
select * from language;
-- multiple value insertion---------------------------------
insert into language (language_id,last_update,name) values (13,now(),'r'), (14,now(),'u'), (15,now(),'s');
select * from language;
-- ----------------------------------------set--------------------
insert into language set name='e';
select * from language;


--        --------------------------------------------now we prepare our own database-----------------------------------
 create database  test;
  create database if not exists test;
use test;
show tables;
-- -------------------------ddl statement create(table,index,view)-------------------------------------------
create table employee(e_id int,e_name char(20),e_mail char(20));
desc employee;
insert into employee values(1,'jay','jay@gmail.com');
insert into employee values(1,'aman','aman@gmail.com');
select * from employee;
insert into employee values(1,'aman',null);
insert into employee(e_id) values(1);
select * from employee;
create table employee2(e_id int default 0,e_name char(20),e_mail char(20));
insert into employee2 (e_name,e_mail)
values('aman','aman@gmail.com');
select * from employee2;
insert into employee2 (e_name,e_mail)
values('a','a@gmail.com');
select * from employee2;
create  table student(s_id int not null auto_increment,s_name char(20) not null,s_fee int not null, primary key(s_id));
desc student;
insert into student values (1,'tanu',77000);
select * from student;
insert into student(s_name,s_fee) values ('jay',77000);
select * from student;
insert into student(s_name,s_fee) values ('ram',77000);
select * from student;
-- ------------------------------------------------------------6sep--------------------------------------------------------


use test;
create database student;
create table student (s_name char(20),s_id int,s_mail char (20));
create table student3 (s_name char(20),s_id int,s_mail char (20));
desc student3;
insert into student3 values ('raj',4,'raj@gmil.com');
select * from student3;
create table student4 (s_name char(20),s_id int not null default 0,s_mail char (20) default "gmail.com");
insert into student4 values ('raj',1,'raj@gmil.com');
select * from student4;
create table student5(s_name char(20),s_id int unique default 0,s_mail char (20) default "gmail.com");
insert into student5 values ('raj',1,'raj@gmil.com');
desc student5;
insert into student5 values ('raj',null,'raj@gmil.com');
desc student5;
insert into student5 (s_name,s_mail) values ('raj','raj@gmil.com');
desc student5;
select * from student5;
insert into student5 (s_name,s_mail) values ('raj','raj@gmil.com');
create table student6 (s_name char(20),s_id int not null default 0,s_mail char (20) default "gmail.com");-- setting default values in tables
insert into student6 (s_name) values ('raj');
select * from student6;
insert into student6 (s_name) values ('taj');
select * from student6;
drop table employee;
drop table student;
drop table student1;-- deleting previous data types--------------------
drop table student2;
create table employee;
create table employee (e_id int primary key,e_name char(20)); -- primary key----------------
desc employee;
insert into employee (e_id,e_name) values(1,'tanu');
insert into employee values(2,'sham');
select * from employee;
-- learn about different cpnstrant i.e check,foreign key---------------------------------------
-- -------------------------------------data types---------------------------------------------------
-- 1.int [(width)][unsigned][zerofill]
create table ram(eid int(1));
insert into ram values(3);
insert into ram values(33);
select * from ram;
drop table ram1;
create table ram1(eid int(5) zerofill); -- left side fill----------------------
insert into ram1 values(1);
select * from ram1;
insert into ram1 values(33);
select * from ram1;
create table ram2(eid int unsigned); -- in unsigned it doenot take -ve value-----------
insert into ram2 values(-33);
select * from ram2;
-- big int-------------takes 18 crore something value in unsigned form-------------------
-- boolean is stored as tiny int ---------------------------------------------
create table s_bool(i bool);
insert into s_bool values(true),(false);
select * from s_bool;
insert into s_bool values(0),(1),(127);
select * from s_bool;

-- -------------------------------------------7sep-----------------------------------------

-- varchar and char
use test;
create table ep1(name1 char(20));-- char take less than equal to 20 characters
insert into ep1 values("whgedgwg");
insert into ep1 values("a ");
select name1,length(name1) from ep1;
create table ep_var(name1 varchar(20));
insert into ep_var values("a    ");
select name1,length(name1) from ep_var;-- varchar count space also
create table ep_var1(eid int check(eid>2));
insert into ep_var1 values(2);-- violate the condition of check given in previous line
create table ep_var2(gender char(1) ,check(gender in ('m','f','o')));
insert into ep_var2 values('f');
create table ep_var4(age int ,gender char(1) ,check(age>10 and gender in ('m','f','o')));
insert into ep_var4 values(13,'m');
select * from ep_var4;

delete from ep_var4 where age=3;-- delete ------------
select * from ep_var4;
update ep_var4 set age=23 where age=13;-- set---------
select * from ep_var4;
update ep_var4 set age=17 limit 3;
select * from ep_var4;
delete from ep_var4 order by age limit 2;-- delete deletes the data row by row thats why its slow but it can be roll back--
select * from ep_var4;
-- drop----------
drop table ep_var4;-- delete whole table with data but it can be rollback
select * from ep_var4;
create table ep_var4(age int ,gender char(1) ,check(age>10 and gender in ('m','f','o')));
insert into ep_var4 values(15,'f');
select * from ep_var4;
truncate table ep_var4;-- truncate firstly drop the existing table then create the new schema of that table but it cannot be rollback
select * from ep_var4;

-- homework
-- ------groupby------how filter data in groupby
-- ---------distinct-----------
-- ------------------------------------------------------8sep-----------------------------------------------------------------------------------------
use sakila;
select first_name,concat ("mr",first_name) fullname from actor ;
select first_name,concat ("mr",first_name) fullname from actor order by fullname;
-- group by---------------------------
select first_name,length(first_name) from actor;-- single row function----
-- for multiple row we use multi row function-----------
-- we collect similar kind of values  known as group then perform function known as group operation
-- i.e group by operation----------
show tables;
use world;
show tables;
select * from country;
-- count-------
desc country;
create table t1(id int,city varchar(20));
insert into t1 values(1,"hey1");
insert into t1 values(1,"hey4");
insert into t1 values(null,"hey3");
select * from t1;
select count(*)from t1;
-- count() count the column that doesnot contain nulll values-------
select count(id)from t1;-- it works on primary key as primary key is not null---

-- sum()---------
select sum(id) from t1;
-- distinct()------
select count(distinct id) from t1;
select * from city where countrycode="afg";
select countrycode  from city group by countrycode;
-- 
select * from city;
select concat("country",countrycode,"has total count",count(*),"and sum is",sum(population)) from city group by countrycode;  
desc city;
select * from city;
show tables;
select * from city;
-- group by-----followed by --------having---------------
select countrycode,count(id),sum(population) as totalpopulation from city group by countrycode having sum(population)>500 ;
select * from country;
select continent from country;
select continent from country group by continent;
select * from country;
show databases;
use sakila;
show databases;
use world;
-- -------------------------------------------11sep------------------------------
--  set operations------- UNION,INTERSECT,EXCEPT--------------
show tables;
select * from country;
use sakila;
show tables;
desc actor;
desc actor_info;
select first_name from actor_info order by first_name limit 3;-- order by
select first_name from actor limit 3;-- without order by


-- union------------


-- ----------------------
select first_name from actor 
union
select first_name from actor_info;
create table xyz(id int );
insert into xyz values(10);
insert into xyz values(10);
create table abc(id int );
insert into abc values(20);
select *from xyz union all select * from abc;-- union all combine all duplicate asa well as all values
-- where as union doesnot give duplicate values
insert into xyz values(10);
insert into xyz values(20);
create table abc(id int );
insert into abc values(20);
select *from xyz 
intersect -- give common data from  table
 select * from abc; 
-- except--------------
insert into xyz values(10);
insert into xyz values(20);
create table abc(id int );
insert into abc values(20);
select *from xyz 
except -- gives data that is not in second table
 select * from abc;
insert into xyz values(now());

-- ------------------JOINS-----------------------------------------
-- INNER JOIN ---------------- common elements
-- LEFT JOIN--------------all left table+common element
-- RIGHT JOIN---------------all right table+commom element
-- FULL OUTER-----------------all data from both tables

-- HOMEWORK----------------difference between join and set operations--------
-- --------------------------group by operations---------------------








