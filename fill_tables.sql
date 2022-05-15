-- Adding rows to carbrands
INSERT INTO carbrands (brandname, country) VALUES ('Audi', 'Germany');
INSERT INTO carbrands (brandname, country) VALUES ('Lamborghini', 'Italy');
INSERT INTO carbrands (brandname, country) VALUES ('BMW', 'Germany');
INSERT INTO carbrands (brandname, country) VALUES ('Dodge', 'USA');
INSERT INTO carbrands (brandname, country) VALUES ('Nissan', 'Japan');

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
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (599, 1500, 3000, 10500);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (2000, 7000, 14000, 49000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (4000, 10000, 20000, 70000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (5000, 12000, 24000, 80000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (2300, 5750, 11500, 35000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (2000, 4000, 8000, 24000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (3000, 6000, 12000, 36000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (2000, 4000, 8000, 24000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (2000, 7000, 14000, 49000);
INSERT INTO pricelist (priceDay, priceWeekend, priceWeek, priceMonth) VALUES (2000, 7000, 14000, 49000);

-- Adding rows to carmodels
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Sedan', 'A3', 1, 1, 1);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Sedan', 'A6', 1, 2, 2);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Coupe', 'Aventador', 2, 3, 3);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Roadster', 'Huracan', 2, 4, 4);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Cabrio', 'E92M3', 3, 5, 5);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Sedan', 'M5CS', 3, 6, 6);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Sedan', 'Challenger', 4, 7, 7);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Sedan', 'Charger', 4, 8, 8);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Coupe', 'R35', 5, 9, 9);
INSERT INTO carmodels (carBody, modelName, CarBrands_idBrands, Descriptions_idDescription, PriceList_idPriceList) VALUES ('Coupe', 'Z', 5, 10, 10);

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
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (1,1);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (2,2);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (3,3);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (4,4);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (5,5);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (6,6);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (7,7);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (8,8);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (9,9);
INSERT INTO cars(carmodels_idmodels, parameters_idparameters) VALUES (10,10);

-- adding rows to rentstatus
INSERT INTO rentstatus (isavailable) VALUES (False);
INSERT INTO rentstatus (isavailable) VALUES (True);

-- Adding rows to item
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Piekne Audi A3 skus sie',1,2);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Audi A6. Luksus i piekno',2,2);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Pedz szybko',3,2);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Pedz jak Huracan',4,1);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Piekny bulgot V8',5,2);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Szybka limuzyna',6,1);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Od 0 do 100kmh w 3.4s',7,2);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Od 0 do 100kmh w 3.7s',8,1);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Tokyo Drift',9,2);
INSERT INTO item(title, cars_idcars, status_idrentstatus) VALUES ('Tokyo Style B)',10,2);

