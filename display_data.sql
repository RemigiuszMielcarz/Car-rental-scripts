-- full car info
SELECT brandname,modelname,priceday,priceweekend,priceweek,pricemonth,country,carbody,specification FROM carmodels
JOIN carbrands cb on carmodels.carbrands_idbrands = cb.idbrands
JOIN pricelist pl on carmodels.pricelist_idpricelist = pl.idpricelist
JOIN descriptions dsc on carmodels.descriptions_iddescription = dsc.iddescription;

-- price info
SELECT brandname,modelname,priceday,priceweekend,priceweek,pricemonth FROM carmodels
JOIN carbrands cb on carmodels.carbrands_idbrands = cb.idbrands
JOIN pricelist pl on carmodels.pricelist_idpricelist = pl.idpricelist;

-- car descriptions
SELECT brandname,modelname,specification FROM carmodels
JOIN carbrands cb on carmodels.carbrands_idbrands = cb.idbrands
JOIN descriptions dsc on carmodels.descriptions_iddescription = dsc.iddescription;

--horsepower
SELECT brandname,modelname,power FROM cars
JOIN carmodels cm on cars.carmodels_idmodels = cm.idmodels
JOIN carbrands cb on cb.idbrands = cm.carbrands_idbrands
JOIN parameters pm on cars.parameters_idparameters = pm.idparameters;

--cars availability
SELECT brandname,modelname,isavailable FROM item
JOIN rentstatus r on r.idrentstatus = item.status_idrentstatus
JOIN cars c on c.idcars = item.cars_idcars
JOIN carmodels cm on cm.idmodels = c.carmodels_idmodels
JOIN carbrands cb on cb.idbrands = cm.carbrands_idbrands;