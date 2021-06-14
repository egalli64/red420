use red;

drop table if exists cities;

create table cities (
city_id integer primary key not null auto_increment, 
city_name varchar (25) not null,
state_name varchar (25) not null


);

insert into cities ( city_id, city_name, state_name)
values ("300", "Parigi", "Francia") ;

commit; 

