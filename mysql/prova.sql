update scenes
set film_id =1
where scene_id=1;

commit;
update scenes
set film_id =2
where scene_id=2;

commit;
update scenes
set film_id =3
where scene_id=3;

commit;
update scenes
set film_id =4
where scene_id=4;

commit;
update scenes
set film_id =5
where scene_id=5;

commit;


select scene_name, location_name
from  locations join locations_scenes using(location_id)
join scenes using(scene_id)
where city_id=2;

