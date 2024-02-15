-- liquibase formatted sql

-- changeset Chandramani:1
CREATE STAGE IF NOT EXISTS TESLA_DB_GITHUB.***.TESLA_STAGE
URL='s3://your-s3-bucket/path/to/stage'
STORAGE_INTEGRATION = s3_int;

copy into tesla_data
from @TESLA_DB_GITHUB.***.TESLA_STAGE
file_format=( type =csv field_delimiter=',' skip_header = 1)
files= ('TSLA.csv');