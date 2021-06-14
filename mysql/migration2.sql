use red;

drop table if exists cities;
drop table if exists film;


create table cities (
city_id integer primary key not null auto_increment, 
city_name varchar (25) not null,
state_name varchar (25) not null

);

insert into cities ( city_id, city_name, state_name)
values ("300", "Parigi", "Francia") ;

commit; 

create table films (
film_id integer primary key not null auto_increment, 
film_name varchar (25) not null,
film_year integer not null,
film_director varchar (30) not null

);

insert into films ( film_id, film_name, film_year, film_director) values ("1", "Amelie", "2001", "Jeunet");

commit; 

