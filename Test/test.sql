-- Step 4
SELECT * FROM cardealershipdatabase.dealerships;


SELECT v.* FROM cardealershipdatabase.dealerships d 
JOIN cardealershipdatabase.vehicles v
WHERE d.VIN = v.VIN;


-- Steps 4 
SELECT * FROM cardealershipdatabase.vehicles
WHERE VIN = 'C4RJFBG5EC518123';


SELECT * FROM cardealershipdatabase.vehicles
WHERE make = 'Toyota';   
 

SELECT * FROM cardealershipdatabase.inventory
WHERE dealership_id = 2;

SELECT d.*
FROM cardealershipdatabase.dealerships d
JOIN cardealershipdatabase.inventory i ON d.dealership_id = i.dealership_id
JOIN cardealershipdatabase.vehicles v ON i.VIN = v.VIN
WHERE v.make = 'Toyota' 
    AND v.model = 'Priuse' 
    AND v.color = 'Light Blue';
    
    
SELECT sc.*
FROM cardealershipdatabase.sales_contracts sc
JOIN cardealershipdatabase.inventory i ON sc.VIN = i.VIN
JOIN cardealershipdatabase.dealerships d ON i.dealership_id = d.dealership_id
WHERE d.dealership_id = 1
    AND s.sale_date BETWEEN '2024-07-01' AND '2025-06-30' ;