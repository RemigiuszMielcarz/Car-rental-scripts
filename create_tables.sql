CREATE TABLE CarBrands (idBrands SERIAL primary key ,
brandName varchar(50) NOT NULL UNIQUE,
country varchar(50) NOT NULL);

CREATE TABLE CarModels (idModels SERIAL primary key,
carBody varchar(50) NOT NULL,
modelName varchar(50) NOT NULL UNIQUE,
CarBrands_idBrands int NOT NULL,
Descriptions_idDescription int NOT NULL UNIQUE,
PriceList_idPriceList int NOT NULL UNIQUE);

CREATE TABLE Cars (idCars SERIAL primary key,
CarModels_idModels int NOT NULL UNIQUE,
Parameters_idParameters int NOT NULL UNIQUE);

CREATE TABLE Descriptions (idDescription SERIAL primary key,
specification varchar(50) NOT NULL);

CREATE TABLE Item (idItem SERIAL primary key,
title varchar(200) NOT NULL,
Cars_idCars int NOT NULL UNIQUE,
Status_idRentStatus int NOT NULL);

CREATE TABLE Parameters (idParameters SERIAL primary key,
color varchar(100) NOT NULL,
mileage int NOT NULL,
power int NOT NULL,
vintage int NOT NULL);

CREATE TABLE PriceList(idPriceList SERIAL primary key,
priceDay int NOT NULL,
priceMonth int NOT NULL,
priceWeek int NOT NULL,
priceWeekend int NOT NULL);

CREATE TABLE RentStatus(idRentStatus SERIAL primary key,
                        isAvailable boolean);

alter table CarModels add foreign key (CarBrands_idBrands)
    REFERENCES CarBrands (idBrands)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table CarModels add foreign key (Descriptions_idDescription)
    REFERENCES Descriptions (idDescription)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table CarModels add foreign key (PriceList_idPriceList)
    REFERENCES PriceList (idPriceList)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table Cars add foreign key (CarModels_idModels)
    REFERENCES CarModels (idModels)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table Cars add foreign key (Parameters_idParameters)
    REFERENCES Parameters (idParameters)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table Item add foreign key (Cars_idCars)
    REFERENCES Cars (idCars)
ON UPDATE CASCADE ON DELETE CASCADE;

alter table Item add foreign key (Status_idRentStatus)
    REFERENCES RentStatus (idRentStatus)
ON UPDATE CASCADE ON DELETE CASCADE;