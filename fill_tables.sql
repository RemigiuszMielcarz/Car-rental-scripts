-- Adding rows to carbrands
INSERT INTO car_brands (brand_name, country) VALUES ('Audi', 'Germany');
INSERT INTO car_brands (brand_name, country) VALUES ('Lamborghini', 'Italy');
INSERT INTO car_brands (brand_name, country) VALUES ('BMW', 'Germany');
INSERT INTO car_brands (brand_name, country) VALUES ('Dodge', 'USA');
INSERT INTO car_brands (brand_name, country) VALUES ('Nissan', 'Japan');

-- Adding rows to descriptions
INSERT INTO descriptions (specification) VALUES ('Czwarta generacja A3');
INSERT INTO descriptions (specification) VALUES ('Czwarta generacja A6');
INSERT INTO descriptions (specification) VALUES ('Szybki ekskluzywny samochód');
INSERT INTO descriptions (specification) VALUES ('Jeszcze szybszy ekskluzywny samochód');
INSERT INTO descriptions (specification) VALUES ('Najlepszy supersamochód');
INSERT INTO descriptions (specification) VALUES ('Drugi najlepszy supersamochód');
INSERT INTO descriptions (specification) VALUES ('Ciężki supersamochód');
INSERT INTO descriptions (specification) VALUES ('Jeszcze cięższy supersamochód');
INSERT INTO descriptions (specification) VALUES ('Trochę lżejszy supersamochód');
INSERT INTO descriptions (specification) VALUES ('Leciutki supersamochód');

-- Adding rows to pricelist
INSERT INTO price_list (day, weekend, week, month) VALUES (599, 1500, 3000, 10500);
INSERT INTO price_list (day, weekend, week, month) VALUES (2000, 7000, 14000, 49000);
INSERT INTO price_list (day, weekend, week, month) VALUES (4000, 10000, 20000, 70000);
INSERT INTO price_list (day, weekend, week, month) VALUES (5000, 12000, 24000, 80000);
INSERT INTO price_list (day, weekend, week, month) VALUES (2300, 5750, 11500, 35000);
INSERT INTO price_list (day, weekend, week, month) VALUES (2000, 4000, 8000, 24000);
INSERT INTO price_list (day, weekend, week, month) VALUES (3000, 6000, 12000, 36000);
INSERT INTO price_list (day, weekend, week, month) VALUES (2000, 4000, 8000, 24000);
INSERT INTO price_list (day, weekend, week, month) VALUES (2000, 7000, 14000, 49000);
INSERT INTO price_list (day, weekend, week, month) VALUES (2000, 7000, 14000, 49000);

-- Adding rows to carmodels
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Sedan', 'A3', 1, 1, 1);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Sedan', 'A6', 1, 2, 2);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Coupe', 'Aventador', 2, 3, 3);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Roadster', 'Huracan', 2, 4, 4);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Cabrio', 'E92M3', 3, 5, 5);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Sedan', 'M5CS', 3, 6, 6);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Sedan', 'Challenger', 4, 7, 7);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Sedan', 'Charger', 4, 8, 8);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Coupe', 'R35', 5, 9, 9);
INSERT INTO car_models (car_body, model_name, car_brand_id, description_id, price_list_id) VALUES ('Coupe', 'Z', 5, 10, 10);

-- Adding rows to parameters
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('White', '120000', 120, 2016);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Black', '80000', 210, 2018);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Pink', '4700', 650, 2017);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Yellow', '200', 825, 2022);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Black', '120000', 90, 2012);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Black', '100', 600, 2022);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Red', '10000', 850, 2018);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('White', '200000', 420, 1987);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Green', '12000', 300, 2020);
INSERT INTO parameters (color, mileage, power, vintage) VALUES ('Blue', '10000', 350, 2021);

--Adding rows to cars
INSERT INTO cars(car_model_id, parameters_id) VALUES (1,1);
INSERT INTO cars(car_model_id, parameters_id) VALUES (2,2);
INSERT INTO cars(car_model_id, parameters_id) VALUES (3,3);
INSERT INTO cars(car_model_id, parameters_id) VALUES (4,4);
INSERT INTO cars(car_model_id, parameters_id) VALUES (5,5);
INSERT INTO cars(car_model_id, parameters_id) VALUES (6,6);
INSERT INTO cars(car_model_id, parameters_id) VALUES (7,7);
INSERT INTO cars(car_model_id, parameters_id) VALUES (8,8);
INSERT INTO cars(car_model_id, parameters_id) VALUES (9,9);
INSERT INTO cars(car_model_id, parameters_id) VALUES (10,10);

-- adding rows to rentstatus
INSERT INTO status (is_available) VALUES (False);
INSERT INTO status (is_available) VALUES (True);

-- Adding rows to item
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Piekne Audi A3 skus sie', 'a3.png', 1, 2);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Audi A6. Luksus i piekno', 'a6.png', 2, 2);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Pedz szybko', 'aventador.png', 3, 2);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Pedz jak Huracan', 'huracan.png', 4, 1);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Piekny bulgot V8', 'e92m3.png', 5, 2);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Szybka limuzyna', 'm5cs.png', 6, 1);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Od 0 do 100kmh w 3.4s', 'challenger.png', 7, 2);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Od 0 do 100kmh w 3.7s', 'charger.png', 8, 1);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Tokyo Drift', 'r35.png', 9, 2);
INSERT INTO item(title, picture, car_id, status_id) VALUES ('Tokyo Style B)', 'z.png', 10, 2);

