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

 COPY INTO Tesla_data
 FROM @tsla_data_snowpipe
FILE_FORMAT=(TYPE='CSV' FIELD_DELIMITER=',' SKIP_HEADER = 1)
files=('TSLA.csv')
PURGE=TRUE;
