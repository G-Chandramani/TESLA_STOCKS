-- liquibase formatted sql

-- changeset Chandramani:1
use database tesla_db_github;

use schema TESLA_SCHEMA;

use warehouse CHANDRAMANI; 

create or replace stage tesla_db_github.TESLA_SCHEMA.tesla_stage
url ='s3://chintusnowflake/csv/project1/'
STORAGE_INTEGRATION = s3_int;

list @tesla_stage;