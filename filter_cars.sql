-- filtered search, German and Italian cars between 2000-6000pln/day, order from cheapest to most expensive
SELECT brandname,modelname,priceday,priceweekend,priceweek,pricemonth,country,carbody,specification FROM carmodels
JOIN carbrands cb on carmodels.carbrands_idbrands = cb.idbrands
JOIN pricelist pl on carmodels.pricelist_idpricelist = pl.idpricelist
JOIN descriptions dsc on carmodels.descriptions_iddescription = dsc.iddescription
WHERE priceday BETWEEN 2000 AND 6000
AND country LIKE 'Germany' OR country LIKE 'Italy'
ORDER BY priceday;

--order available cars by horsepower
SELECT brandname,modelname,power,isavailable FROM item
JOIN rentstatus r on r.idrentstatus = item.status_idrentstatus
JOIN cars c on item.cars_idcars = c.idcars
JOIN carmodels cm on cm.idmodels = c.carmodels_idmodels
JOIN carbrands cb on cb.idbrands = cm.carbrands_idbrands
JOIN parameters pm on pm.idparameters = c.parameters_idparameters
WHERE isavailable IS TRUE
ORDER BY power;
