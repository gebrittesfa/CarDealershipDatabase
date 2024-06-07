CREATE TABLE cardealershipdatabase.sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    customer_name VARCHAR(30),
    customer_address VARCHAR(50),
    customer_phone VARCHAR(12),
    sale_date DATE,
    sale_price DECIMAL(10, 2),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

INSERT INTO cardealershipdatabase.sales_contracts (VIN, customer_name, customer_address, customer_phone, sale_date, sale_price)
VALUES
('ABC12345678901234', 'John Doe', '123 Main St', '555-123-4567', '2024-06-01', 25000.00),
('DEF23456789012345', 'Jane Smith', '456 Elm St', '555-234-5678', '2024-06-02', 28000.00),
('GHI34567890123456', 'Michael Johnson', '789 Oak St', '555-345-6789', '2024-06-03', 22000.00),
('JKL45678901234567', 'Emily Davis', '321 Maple Ave', '555-456-7890', '2024-06-04', 20000.00),
('MNO56789012345678', 'David Wilson', '654 Pine St', '555-567-8901', '2024-06-05', 30000.00);


CREATE TABLE cardealershipdatabase.lease_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    lease_name VARCHAR(30),
    lease_start_date DATE,
    lease_end_date DATE,
    monthly_payment DECIMAL(10, 2),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

INSERT INTO cardealershipdatabase.lease_contracts (VIN, lease_name, lease_start_date, lease_end_date, monthly_payment)
VALUES
('ABC12345678901234', 'Amazon Dlearship', '2024-07-01', '2025-06-30', 500.00),
('DEF23456789012345', 'Johnson Leasing', '2024-08-01', '2025-07-31', 600.00),
('GHI34567890123456', 'Doe Rentals', '2024-09-01', '2025-08-31', 550.00);
