use red;

drop table if exists locations_scenes;
drop table if exists locations;
drop table if exists cities;
drop table if exists scenes;
drop table if exists films;


create table cities (
city_id integer primary key not null auto_increment, 
city_name varchar (25) not null,
state_name varchar (25) not null

);

insert into cities (city_name, state_name) values 
("Parigi", "Francia"),
("Roma", "Italia"),
("Londra", "Regno Unito");

commit; 

create table films (
film_id integer primary key not null auto_increment, 
film_name varchar (25) not null,
film_year integer not null,
film_director varchar (30) not null

);

insert into films (film_name, film_year, film_director) values 
("Amelie", "2001", "Jeunet"),
("La dolce vita", "1960", "Fellini"),
("Harry Potter", "2001", "Columbus"),
("Love, Actually", "2003", "Curtis");

commit;

create table scenes (
scene_id integer primary key not null auto_increment, 
scene_name varchar (40) not null,
film_id integer,

constraint scenes_film_fk foreign key(film_id) references films (film_id) on delete cascade
);

insert into scenes (scene_name) values 
("Cioccolateria"),
("Fontana"),
("Stazione"),
("Ballo in casa");

commit;

create table locations (
location_id integer primary key not null auto_increment, 
location_name varchar (40) not null,
city_id integer,

constraint locations_city_fk foreign key(city_id) references cities (city_id) on delete cascade
);

insert into locations (location_name) values 
("Café des 2 Moulins"),
("Fontana di Trevi"),
("King's Cross"),
("Downing Street");

commit;

create table locations_scenes (
location_id integer, 
scene_id integer,

constraint locations_scenes_pk primary key(location_id, scene_id),
    constraint locations_scenes_fk foreign key(location_id) references locations(location_id),
    constraint scenes_locations_fk foreign key(scene_id) references scenes(scene_id)
);

insert into locations_scenes (location_id, scene_id) values 
("1", "1"),
("2", "2"),
("3", "3"),
("4", "4");


commit; 
