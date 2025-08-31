USE saleDB;

CREATE TABLE Offices (
office_id INT AUTO_INCREMENT PRIMARY KEY,
office_name VARCHAR(100) NOT NULL,
Phone VARCHAR(20),
Address_line1 VARCHAR(100),
Address_line2 VARCHAR(100),
City VARCHAR(50) NOT NULL,
Country VARCHAR(50) NOT NULL,
Postal_code VARCHAR(15)
);

CREATE TABLE Employees (
Employee_id INT AUTO_INCREMENT PRIMARY KEY,
First_name VARCHAR(50) NOT NULL,
Last_name VARCHAR(50) NOT NULL,
Email VARCHAR(50) UNIQUE NOT NULL,
Employee_number VARCHAR(50) UNIQUE NOT NULL,
Job_title VARCHAR(50) NOT NULL,
Office_id INT,
Hire_date DATE
);

CREATE TABLE Products (
Product_id INT AUTO_INCREMENT PRIMARY KEY,
Product_name VARCHAR(50) NOT NULL,
Poduct_description TEXT,
Product_category VARCHAR(50),
Quantity_in_stock INT NOT NULL,
Buying_Price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    contact_phone VARCHAR(20) NOT NULL,
    contact_email VARCHAR(100),
    address VARCHAR(150) NOT NULL
);


CREATE TABLE Payment (
Check_number VARCHAR(50) NOT NULL,
Amount DECIMAL(10,2) NOT NULL,
Payment_date DATE NOT NULL,
Payment_method VARCHAR (30) NOT NULL,
Customer_id INT NOT NULL,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL,
    required_date DATE,
    shipped_date DATE NOT NULL,
    status VARCHAR(20),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderDetails (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price_each DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Offices (office_name, Phone, Address_line1, Address_line2, City, Country, Postal_code)
VALUES
('Nairobi HQ', '+254734934489', 'Moi Avenue 123', NULL, 'Nairobi', 'Kenya', '00100'),
('Accra Branch', '+23399088076', 'Kwame Nkrumah St 45', NULL, 'Accra', 'Ghana', 'GA-100-234'),
('Johannesburg Branch', '+27865432940', 'Nelson Mandela Drive 77', NULL, 'Johannesburg', 'South Africa', '2001'),
('Cairo Office', '+20223722091', 'Tahrir Square 10', NULL, 'Cairo', 'Egypt', '11511'),
('Lagos Office', '+23438004921', 'Victoria Island 56', NULL, 'Lagos', 'Nigeria', '101241');

INSERT INTO Employees (First_name, Last_name, Email, Employee_number, Job_title, Office_id, Hire_date)
VALUES
('James', 'Otieno', 'j.otieno@mirror.com', 'EMP001', 'Sales Rep', 1, '2022-03-15'),
('Grace', 'Mwangi', 'g.mwangi@mirror.com', 'EMP002', 'Accountant', 1, '2021-06-10'),
('David', 'Kimani', 'd.kimani@mirror.com', 'EMP003', 'Tech Support', 1, '2022-09-11'),

('Kwesi', 'Boateng', 'k.boateng@mirror.com', 'EMP004', 'Sales Rep', 2, '2023-01-05'),
('Sarah', 'Johnson', 's.johnson@mirror.com', 'EMP005', 'International Liaison', 2, '2019-04-17'),
('Yaw', 'Adjei', 'y.adjei@mirror.com', 'EMP006', 'Manager', 2, '2020-07-22'),

('Nomsa', 'Zulu', 'n.zulu@mirror.com', 'EMP007', 'Manager', 3, '2020-08-20'),
('Thandiwe', 'Nkosi', 't.nkosi@mirror.com', 'EMP008', 'Sales Rep', 3, '2021-11-02'),
('Sipho', 'Maseko', 's.maseko@mirror.com', 'EMP009', 'Tech Support', 3, '2022-04-18'),

('Omar', 'Hassan', 'o.hassan@mirror.com', 'EMP010', 'Manager', 4, '2018-12-01'),
('Fatima', 'Ali', 'f.ali@mirror.com', 'EMP011', 'Sales Rep', 4, '2021-05-14'),
('Karim', 'El-Sayed', 'k.elsayed@mirror.com', 'EMP012', 'Accountant', 4, '2019-09-30'),

('Chinedu', 'Okafor', 'c.okafor@mirror.com', 'EMP013', 'Manager', 5, '2020-02-19'),
('Ada', 'Obi', 'a.obi@mirror.com', 'EMP014', 'Sales Rep', 5, '2021-08-09'),
('Kunle', 'Balogun', 'k.balogun@mirror.com', 'EMP015', 'Tech Support', 5, '2022-06-27');

INSERT INTO Products (Product_name, Poduct_description, Product_category, Quantity_in_stock, Buying_Price)
VALUES
('Coca Cola 500ml', 'Soft drink in plastic bottle', 'Beverages', 200, 45.00),
('Sprite 500ml', 'Lemon-lime soft drink', 'Beverages', 150, 40.00),
('Fanta Orange 500ml', 'Orange flavored soda', 'Beverages', 180, 42.00),
('Unga Maize Flour 2kg', 'Staple maize flour', 'Food', 300, 120.00),
('Brookside Milk 1L', 'Pasteurized cow milk', 'Dairy', 120, 85.00),
('Blue Band Margarine 500g', 'Bread spread and cooking margarine', 'Food', 100, 150.00),
('Safaricom Airtime 100 KES', 'Mobile credit voucher', 'Airtime', 500, 100.00),
('Tecno Spark 10', 'Android smartphone', 'Electronics', 50, 16500.00),
('HP Laptop 15”', 'Core i5, 8GB RAM, 512GB SSD', 'Electronics', 20, 75000.00),
('Dettol Soap 175g', 'Antibacterial bathing soap', 'Toiletries', 250, 70.00);

INSERT INTO Customers (customer_name, contact_phone, contact_email, address)
VALUES
('Amina Yusuf', '+254790488990', 'amina.yusuf@gmail.com', 'Nairobi, Kenya'),
('Kwame Mensah', '+23326834892', 'kwame.mensah@yahoo.com', 'Accra, Ghana'),
('Thandiwe Nkosi', '+27825194271', 'thandiwe.nkosi@outlook.com', 'Johannesburg, South Africa'),
('Fatou Diallo', '+221764395487', 'fatou.diallo@gmail.com', 'Dakar, Senegal'),
('Michael Brown', '+12020834657', 'michael.brown@hotmail.com', 'New York, USA'),
('Chen Wei', '+861387925643', 'chen.wei@gmail.com', 'Beijing, China');

INSERT INTO Orders (order_date, required_date, shipped_date, status, customer_id)
VALUES
('2025-08-20', '2025-08-25', '2025-08-22', 'Shipped', 1),
('2025-08-21', '2025-08-28', '2025-08-25', 'In process', 2),
('2025-08-22', '2025-08-29', '2025-08-24', 'In process', 4);

INSERT INTO OrderDetails (order_id, product_id, quantity, price_each)
VALUES
(1, 1, 5, 45.00),
(1, 2, 3, 40.00),
(2, 4, 10, 120.00),
(2, 6, 2, 150.00),
(3, 7, 5, 100.00),
(3, 10, 6, 70.00);

INSERT INTO Payment (Check_number, Amount, Payment_date, Payment_method, Customer_id)
VALUES
('CHK2025001', 375.00, '2025-08-20', 'Mpesa', 1),
('CHK2025002', 1440.00, '2025-08-21', 'Bank Transfer', 2),
('TXN771234', 920.00, '2025-08-22', 'Cash', 4);

SELECT checkNumber, paymentDate,amount FROM Payments;

SELECT orderDate, requiredDate, status FROM Orders WHERE status LIKE 'In Process' ORDER BY orderdate DESC;

SELECT firstName, lastName, email FROM Employees WHERE Job_title LIKE 'Sales Rep' ORDER BY Employee_number DESC;

SELECT * FROM Offices;

SELECT  productName, quantityInStock FROM Products WHERE Product <= 5 ORDER BY Buying_price;