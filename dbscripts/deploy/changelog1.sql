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

create or replace stage tesla_stage
url ='s3://chintusnowflake/csv/project1/'
STORAGE_INTEGRATION = s3_int;