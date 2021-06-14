use red;

drop table if exists cities;
drop table if exists films;


create table cities (
city_id integer primary key not null auto_increment, 
city_name varchar (25) not null,
state_name varchar (25) not null

);

insert into cities (city_name, state_name) values 
("Parigi", "Francia"),
("Roma", "Italia");

commit; 

create table films (
film_id integer primary key not null auto_increment, 
film_name varchar (25) not null,
film_year integer not null,
film_director varchar (30) not null

);

insert into films (film_name, film_year, film_director) values 
("Amelie", "2001", "Jeunet"),
("La dolce vita", "1960", "Fellini");

commit;

