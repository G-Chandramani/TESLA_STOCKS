-- liquibase formatted sql

-- changeset Chandramani:1
copy into tesla_data
from @tsla_data_snowpipe
file_format=( type =csv field_delimiter=',' skip_header = 1)
files= ('TSLAmodified.csv.csv');