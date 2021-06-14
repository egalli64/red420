use red;


drop table if exists films;
drop table if exists scenes;
drop table if exists locations;
drop table if exists cities;


create table films (
film_id integer primary key not null auto_increment, 
film_name varchar (25) not null,
film_year integer,
film_director varchar (20) 

);

insert into films (film_id, film_name, film_year, film_director)
values ("1", "Amelie", "2001", "J. Jeunet");

commit; 

create table scenes (
scene_id integer primary key not null auto_increment, 
scene_name varchar (50) not null,
location_id integer,
film_id integer ,


constraint scenes_film_fk foreign key(film_id) references films (film_id) on delete cascade
);

insert into scenes ( scene_id, scene_name, location_id, film_id)
value ("100", "cioccolata", "200", "1") ;

commit;

create table locations (
location_id integer primary key not null auto_increment, 
location_name varchar (25) not null,
city_id  integer,
scene_id integer,



constraint locations_scene_fk foreign key(scene_id) references scenes (scene_id) on delete cascade

);

insert into locations ( location_id, location_name, city_id, scene_id)
values ("200", "Café des 2 Moulins", "300", "100") ;

commit;

alter table scenes add constraint scenes_location_fk foreign key (location_id) references locations (location_id) on delete cascade;


create table cities (
city_id integer primary key not null auto_increment, 
city_name varchar (25) not null,
state_name varchar (25) not null


);


insert into cities ( city_id, city_name, scene_id)
values ("300", "Parigi", "100") ;

commit; 

alter table locations add constraint locations_city_fk foreign key(city_id) references cities (city_id) on delete cascade;

 commit;
 

