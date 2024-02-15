-- liquibase formatted sql

-- changeset Chandramani:1
 CREATE STAGE IF NOT EXISTS TESLA_DB_GITHUB.TESLA_SCHEMA.TESLA_STAGE;

PUT file://K:\SNOWFLAKE\Project1\teslaData\TSLA.csv @TESLA_DB_GITHUB.TESLA_SCHEMA.TESLA_STAGE auto_compress=true;
   

copy into tesla_data
from @TESLA_DB_GITHUB.TESLA_SCHEMA.TESLA_STAGE
file_format=( type =csv field_delimiter=',' skip_header = 1)
files= ('TSLA.csv');