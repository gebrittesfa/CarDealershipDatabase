CREATE TABLE cardealershipdatabase.inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    FOREIGN KEY (dealership_id) REFERENCES dealership(dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicle(VIN)
);

INSERT INTO cardealershipdatabase.inventory (dealership_id, VIN)
VALUES (1,'VW2K7AJ4FM215678'),
(2, 'NPE24AF4GH336789'),
(3, 'NPE24AF4GH336789'),
(2, 'WEDFRT56GHS905');


-- Step 4

SELECT * FROM cardealershipdatabase.inventory
WHERE dealership_id = 2;

