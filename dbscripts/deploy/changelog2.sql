-- liquibase formatted sql

-- changeset Chandramani:1
copy into tesla_data
from @tesla_db_github.TESLA_SCHEMA.tesla_stage
file_format=( type =csv field_delimiter=',' skip_header = 1)
files= ('TSLA.csv');