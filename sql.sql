show databases;
use sakila;
show tables;
-- describe table describe the structure of table(columns).
describe actor;-- desc short form of describe;
-- how to fetch the  whole table.
select * from actor;
-- how to fetch the specific column of table.
select actor_id,first_name from actor;
desc actor_info;
-- projection(when we  select columns) and selaction(rows).
select * from actor_info;
select actor_id,actor_id+5 from actor_info;-- we can also manipulate the column values as our wish even this does not effect the real data;
-- * is for all columns selection(projection),where is for row (selction).
select * from actor_info where actor_id=2;
select actor_id,first_name from actor_info where actor_id<=2;
select * from actor_info where first_name="ed"; 
-- statement v/s clause difference.
-- where clause,internal.+world database.
-- dbms vs rdbms
-- acid property.what,where use.   

show databases;
use sakila;
show tables;
SHOW DATABASES;
USE WORLD;
show tables;
select * from country;
-- dql select statement.
select database();
use sakila;
show columns from actor_info;
select * from actor;
select* from sakila.actor;
select name from sakila.language;
-- where is a clause used to filter data.alter
select * from language where name='english';
select * from language where language_id>3;
select * from language where language_id!=3;
-- <> this is also not egual to.alter
-- comparision of character.
select * from language where name>'iu';
select * from language where name>'i';
select first_name from actor where first_name >"b";
select * from film;
select * from  film where title like "%dinosaur"; -- end
select * from  film where title like "%dinosaur%"; -- middle
select * from  film where title like "dinosaur%"; -- front
select * from  film where title like "a%"; 
select * from  film where title like "%dinosaur"; 
select * from film where description like "%drama%";
select title,description,release_year from film where description like "a%s";
desc film;
select * from film where title like "a_e%";
select * from film where title like "a_i%";
select  title,film_id,release_year,description from film where title like "_c%";-- 1
select  title,film_id,release_year,description from film where title like "a%an";-- 2
select  title,film_id,release_year,description from film where title like "%t___";-- 3
select  title,film_id,release_year,description from film where title like "_f_i%egg";-- 4
select  title,film_id,release_year,description from film where title like "__a__ %";-- 5






