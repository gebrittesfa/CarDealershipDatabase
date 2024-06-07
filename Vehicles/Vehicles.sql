-- SELECT * FROM cardealershipdatabase.dealerships;
use cardealershipdatabase;
SELECT * FROM cardealershipdatabase.vehicles;
SELECT * FROM vehicles;

CREATE TABLE cardealershipdatabase.vehicles (
    VIN varchar(16)  PRIMARY KEY, make varchar(50), model varchar(50), year INT, color varchar(30), 
    mileage INT, price decimal(10, 2),sold boolean);
    
    
INSERT INTO cardealershipdatabase.vehicles(VIN, make, model, year, color, mileage, price, sold) 
VALUES ('WEDFRT56GHS905', 'Toyota', 'Priuse', 2012, 'Light Blue', 97500, 8700.00, TRUE),
('HGCM82633A004352', 'Honda', 'Accord', 2020, 'Blue', 15000, 22000.00, FALSE),
('C4RJFBG5EC518123', 'Jeep', 'Grand Cherokee', 2019, 'Black', 30000, 28000.00, TRUE),
('T1BURHE0GC556789', 'Toyota', 'Corolla', 2018, 'White', 25000, 18000.00, FALSE),
('VW2K7AJ4FM215678', 'Volkswagen', 'Jetta', 2021, 'Red', 10000, 20000.00, TRUE),
('NPE24AF4GH336789', 'Hyundai', 'Sonata', 2022, 'Gray', 5000, 25000.00, FALSE);


-- Steps 4 
SELECT * FROM cardealershipdatabase.vehicles
WHERE VIN = 'C4RJFBG5EC518123';

SELECT * FROM cardealershipdatabase.vehicles
WHERE make = 'Toyota';


