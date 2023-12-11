-- Query to get all sales information for a specific dealer within a date range
SELECT *
FROM sales_contracts 
JOIN vehicles v ON s.vin = v.vin
JOIN inventory i ON v.vin = i.vin
WHERE i.dealerships_id = 1
    AND s.sale_date BETWEEN '2020-01-15' AND '2023-12-08';
    
-- Query to find a car by VIN
SELECT *
FROM vehicles
WHERE vin = '5XYZH4AG0CG001234';

-- Query to find all dealerships with a certain car type
SELECT *
FROM dealerships 
JOIN inventory i ON d.dealership_id = i.dealerships_id
JOIN vehicles v ON i.vin = v.vin
WHERE v.model = 'Tesla Model 3';

-- Query to find the dealership by VIN
SELECT *
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealerships_id
WHERE i.vin = '5XYZH4AG0CG001234';

-- Query to get all vehicles for a specific dealership
SELECT v.*
FROM vehicles v
JOIN inventory i ON v.vin = i.vin
WHERE i.dealerships_id = 1;

