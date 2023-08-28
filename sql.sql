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






















