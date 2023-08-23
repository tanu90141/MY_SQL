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





