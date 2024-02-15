-- liquibase formatted sql

-- changeset Chandramani:1
use database tesla_db_github;

use schema TESLA_SCHEMA;

use warehouse CHANDRAMANI; 
create or replace table Tesla_data( 
Date date , 
open double,
high double,
low double,
close double, 
adj_close double,
volume bigint );

--changeset Chandramani:2
use schema TESLA_SCHEMA;

select * from tesla data limit 10;

UPDATE tesla_data
SET open = 25.5
WHERE open = 3.8;
