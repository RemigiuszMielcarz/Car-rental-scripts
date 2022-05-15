CREATE FUNCTION deleteItem() RETURNS TRIGGER AS $_$
BEGIN
    DELETE FROM cars WHERE cars.idcars = OLD.cars_idcars;
    RETURN OLD;
END $_$ LANGUAGE 'plpgsql';

CREATE TRIGGER deleteItem
AFTER DELETE ON item
FOR EACH ROW
EXECUTE PROCEDURE deleteItem();
--
CREATE FUNCTION deleteParameters() RETURNS TRIGGER AS $_$
BEGIN
    DELETE FROM parameters WHERE parameters.idparameters = OLD.parameters_idparameters;
    RETURN OLD;
END $_$ LANGUAGE 'plpgsql';

CREATE TRIGGER deleteparameters
AFTER DELETE ON cars
FOR EACH ROW
EXECUTE PROCEDURE deleteParameters();
--
CREATE FUNCTION deleteCarModels() RETURNS TRIGGER AS $_$
BEGIN
    DELETE FROM carmodels WHERE carmodels.idmodels = OLD.carmodels_idmodels;
    RETURN OLD;
END $_$ LANGUAGE 'plpgsql';

CREATE TRIGGER deletemodels
AFTER DELETE ON cars
FOR EACH ROW
EXECUTE PROCEDURE deleteCarModels();
--
CREATE FUNCTION deletePriceList() RETURNS TRIGGER AS $_$
BEGIN
    DELETE FROM pricelist WHERE pricelist.idpricelist = OLD.pricelist_idpricelist;
    RETURN OLD;
END $_$ LANGUAGE 'plpgsql';

CREATE TRIGGER deletepricelist
AFTER DELETE ON carmodels
FOR EACH ROW
EXECUTE PROCEDURE deletePriceList();
--
CREATE FUNCTION deleteDescriptions() RETURNS TRIGGER AS $_$
BEGIN
    DELETE FROM descriptions WHERE descriptions.iddescription = OLD.descriptions_iddescription;
    RETURN OLD;
END $_$ LANGUAGE 'plpgsql';

CREATE TRIGGER deletedescriptions
AFTER DELETE ON carmodels
FOR EACH ROW
EXECUTE PROCEDURE deleteDescriptions();
--
DELETE FROM item WHERE item.iditem = 10;
SELECT * FROM item;
SELECT * FROM cars;
SELECT * FROM parameters;
SELECT * FROM carmodels;
SELECT * FROM pricelist;
SELECT * FROM descriptions;