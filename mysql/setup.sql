drop user if exists red;
drop schema if exists red;

create user red identified by 'password';
create schema red;
grant all privileges on red.* to red;
grant alter routine on red.* to red;

use red;
