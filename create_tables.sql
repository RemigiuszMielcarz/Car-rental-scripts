CREATE TABLE car_brands (id SERIAL primary key,
brand_name varchar(50) NOT NULL UNIQUE,
country varchar(50) NOT NULL);

CREATE TABLE car_models (id SERIAL primary key,
car_body varchar(50) NOT NULL,
model_name varchar(50) NOT NULL UNIQUE,
car_brand_id int NOT NULL,
description_id int NOT NULL UNIQUE,
price_list_id int NOT NULL UNIQUE);

CREATE TABLE cars (id SERIAL primary key,
car_model_id int NOT NULL UNIQUE,
parameters_id int NOT NULL UNIQUE);

CREATE TABLE descriptions (id SERIAL primary key,
specification varchar(50) NOT NULL);

CREATE TABLE item (id SERIAL primary key,
title varchar(200) NOT NULL,
picture varchar(50) NOT NULL,
type varchar(50) NOT NULL,
car_id int NOT NULL UNIQUE,
status_id int NOT NULL);

CREATE TABLE parameters (id SERIAL primary key,
color varchar(100) NOT NULL,
mileage int NOT NULL,
power int NOT NULL,
vintage int NOT NULL);

CREATE TABLE price_list(id SERIAL primary key,
day int NOT NULL,
month int NOT NULL,
week int NOT NULL,
weekend int NOT NULL);

CREATE TABLE status(id SERIAL primary key,
                        is_available boolean);

alter table car_models add foreign key (car_brand_id)
    REFERENCES car_brands (id)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table car_models add foreign key (description_id)
    REFERENCES descriptions (id)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table car_models add foreign key (price_list_id)
    REFERENCES price_list (id)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table cars add foreign key (id)
    REFERENCES car_models (id)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table cars add foreign key (parameters_id)
    REFERENCES parameters (id)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table item add foreign key (car_id)
    REFERENCES cars (id)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table item add foreign key (status_id)
    REFERENCES status (id)
ON UPDATE CASCADE ON DELETE CASCADE;