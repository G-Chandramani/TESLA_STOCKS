-- liquibase formatted sql

-- changeset Chandramani:1
UPDATE tesla_data
SET open = 25.5
WHERE open = 3.8;