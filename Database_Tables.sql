CREATE TABLE Customers (
 customer_id INT PRIMARY KEY,
 customer_name VARCHAR(255),
 email VARCHAR(255),
 phone VARCHAR(20),
 address VARCHAR(255)
 );
 CREATE TABLE Products (
 product_id INT PRIMARY KEY,
 product_name VARCHAR(255),
 category VARCHAR(50),
 price DECIMAL(10, 2)
 );
 CREATE TABLE Orders (
 order_id INT PRIMARY KEY,
 customer_id INT,
 product_id INT,
 order_date DATE,
 total_amount DECIMAL(10, 2),
 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
 FOREIGN KEY (product_id) REFERENCES products(product_id) );
 CREATE TABLE marketing_Campaigns (
 campaign_id INT PRIMARY KEY,
 campaign_name VARCHAR(255),
 start_date DATE,
 end_date DATE,
 budget DECIMAL(10, 2)
 );
CREATE TABLE Campaign_Results (
 result_id INT PRIMARY KEY,
 campaign_id INT,
 date DATE,
 clicks INT,
 impressions INT,
 conversions INT,
 FOREIGN KEY (campaign_id) REFERENCES marketing_Campaigns(campaign_id)
 );
 INSERT INTO Customers (customer_id, customer_name, email, phone, address)
 VALUES
 (1, 'John Doe', 'johndoe@example.com', '1234567890', '123 Main St'), (2, 'Jane
 Smith', 'janesmith@example.com', '9876543210', '456 Elm St'), (3, 'Bob
 Johnson', 'bjohnson@example.com', '5555555555', '789 Oak St'), (4, 'Emily
 Brown', 'emilybrown@example.com', '1112223333', '789 Pine St'), (5, 'Michael
 Johnson', 'mjohnson@example.com', '4445556666', '321 Oak Ave'), (6, 'Sarah
 Davis', 'sarahdavis@example.com', '7778889999', '456 Maple St'), (7, 'Lisa
 Johnson', 'ljohnson@example.com', '1111111111', '789 Maple St'), (8, 'Michael
 Smith', 'msmith@example.com', '2222222222', '123 Oak Ave'), (9, 'Jessica Davis',
 'jdavis@example.com', '3333333333', '456 Elm St'), (10, 'David Wilson',
 'dwilson@example.com', '4444444444', '789 Pine St'), (11, 'Jennifer Thomas',
 'jthomas@example.com', '5555555555', '987 Maple St'), (12, 'William Johnson',
 'wjohnson@example.com', '6666666666', '654 Elm St'), (13, 'Samantha Wilson',
 'swilson@example.com', '7777777777', '321 Pine St'), (14, 'Andrew Davis',
 'adavis@example.com', '8888888888', '987 Oak Ave'), (15, 'Olivia Smith',
 'osmith@example.com', '9999999999', '456 Maple St'), (16, 'Christopher
 Brown', 'cbrown@example.com', '1111111111', '789 Pine St'), (17, 'Emma Johnson',
 'ejohnson@example.com', '2222222222', '321 Maple St'), (18, 'James Wilson',
 'jwilson@example.com', '3333333333', '987 Elm St'), (19, 'Sophia Davis',
 'sdavis@example.com', '4444444444', '654 Oak Ave'), (20, 'Alexander Smith',
'asmith@example.com', '5555555555', '321 Maple St');
 INSERT INTO Products (product_id, product_name, category, price)
 VALUES
 (1, 'Widget A', 'Gadgets', 9.99),
 (2, 'Widget B', 'Gadgets', 14.99),
 (3, 'Thingamajig', 'Widgets', 19.99),
 (4, 'Gizmo', 'Gadgets', 24.99),
 (5, 'Doohickey', 'Widgets', 9.99),
 (6, 'Thingamabob', 'Widgets', 14.99),
 (7, 'Widget C', 'Gadgets', 12.99),
 (8, 'Whatchamacallit', 'Widgets', 17.99),
 (9, 'Doodad', 'Gadgets', 21.99),
 (10, 'Gadget X', 'Gadgets', 29.99),
 (11, 'Widget D', 'Gadgets', 11.99),
 (12, 'Gizmo 2.0', 'Gadgets', 29.99),
 (13, 'Thingamajig XL', 'Widgets', 24.99),
 (14, 'Doohickey Pro', 'Widgets', 19.99),
 (15, 'Widget E', 'Gadgets', 14.99),
 (16, 'Thingamabob Mini', 'Widgets', 9.99),
 (17, 'Widget F', 'Gadgets', 16.99),
 (18, 'Doohickey Deluxe', 'Widgets', 29.99),
 (19, 'Gadget Y', 'Gadgets', 19.99),
 (20, 'Gizmo Pro', 'Gadgets', 34.99);
 INSERT INTO Orders (order_id, customer_id, product_id, order_date, total_amount) VALUES
 (1, 1, 19, '2024-04-10', 29.98),
 (2, 2, 7, '2024-03-25', 9.99),
 (3, 3, 7, '2024-05-12', 34.98),
 (4, 3, 4, '2024-05-20', 14.99),
 (5, 4, 17, '2024-06-03', 9.99),
 (6, 5, 2, '2024-05-18', 44.97),
(7, 6, 9, '2024-04-15', 19.99),
 (8, 7, 15, '2024-06-12', 49.97),
 (9, 8, 15, '2024-05-25', 24.99),
 (10, 9, 18, '2024-06-01', 14.99),
 (11, 10, 16, '2024-04-22', 34.98),
 (12, 11, 11, '2024-04-08', 29.99),
 (13, 12, 12, '2024-06-15', 19.99),
 (14, 13, 3, '2024-05-03', 39.98),
 (15, 14, 17, '2024-04-17', 14.99),
 (16, 15, 4, '2024-05-29', 24.99),
 (17, 16, 7, '2024-06-05', 9.99),
 (18, 17, 15, '2024-06-10', 19.99),
 (19, 18, 8, '2024-04-30', 34.98),
 (20, 19, 2, '2024-03-15', 14.99),
 (21, 1, 5, '2024-04-25', 19.99),
 (22, 2, 3, '2024-05-05', 24.99),
 (23, 3, 8, '2024-05-28', 34.99),
 (24, 4, 1, '2024-04-22', 9.99),
 (25, 5, 20, '2024-06-02', 34.99),
 (26, 6, 4, '2024-05-30', 14.99),
 (27, 7, 12, '2024-06-08', 29.99),
 (28, 8, 11, '2024-04-15', 29.99),
 (29, 9, 6, '2024-05-12', 19.99),
 (30, 10, 13, '2024-05-18', 24.99),
 (31, 11, 10, '2024-04-30', 21.99),
 (32, 12, 14, '2024-06-07', 17.99),
 (33, 13, 18, '2024-05-21', 34.99),
 (34, 14, 19, '2024-06-11', 29.99),
 (35, 15, 1, '2024-04-20', 9.99),
 (36, 16, 3, '2024-06-02', 24.99),
 (37, 17, 15, '2024-05-10', 49.99),
(38, 18, 17, '2024-05-14', 19.99),
 (39, 19, 5, '2024-06-03', 14.99),
 (40, 20, 8, '2024-04-05', 34.99),
 (41, 1, 6, '2024-06-15', 29.99),
 (42, 2, 19, '2024-05-22', 39.99),
 (43, 3, 7, '2024-04-12', 24.99),
 (44, 4, 10, '2024-04-28', 21.99),
 (45, 5, 12, '2024-06-10', 29.99),
 (46, 6, 4, '2024-05-11', 14.99),
 (47, 7, 11, '2024-06-04', 19.99),
 (48, 8, 18, '2024-05-15', 34.99),
 (49, 9, 16, '2024-06-09', 29.99),
 (50, 10, 14, '2024-04-25', 19.99);
 INSERT INTO marketing_Campaigns (campaign_id, campaign_name, start_date, end_date,
 budget)
 VALUES
 (1, 'Summer Sale', '2024-05-15', '2024-06-15', 1000.00),
 (2, 'Holiday Promotion', '2024-11-10', '2024-12-25', 2500.00),
 (3, 'Flash Sale', '2024-06-05', '2024-06-12', 500.00),
 (4, 'New Product Launch', '2024-05-25', '2024-06-30', 2000.00),
 (5, 'Spring Clearance', '2024-04-20', '2024-05-15', 1500.00),
 (6, 'Back to School', '2024-09-01', '2024-09-30', 1800.00),
 (7, 'Black Friday', '2024-11-25', '2024-11-25', 1000.00),
 (8, 'Summer Collection', '2024-06-01', '2024-06-30', 1200.00),
 (9, 'End of Year Sale', '2024-12-10', '2024-12-20', 3000.00),
 (10, 'Fall Promotion', '2024-10-01', '2024-10-31', 2000.00),
 (11, 'New Year Special', '2024-12-31', '2025-01-01', 500.00),
 (12, 'Valentines Day', '2024-02-01', '2024-02-14', 800.00),
 (13, 'Easter Sale', '2024-04-01', '2024-04-30', 1000.00),
 (14, 'Summer Vacation', '2024-06-10', '2024-07-15', 1500.00),
(15, 'Spring Collection', '2024-03-01', '2024-03-31', 1200.00),
 (16, 'Independence Day', '2024-07-04', '2024-07-04', 500.00),
 (17, 'Winter Clearance', '2024-12-01', '2024-12-31', 2000.00),
 (18, 'Mothers Day', '2024-05-01', '2024-05-31', 800.00),
 (19, 'Halloween Sale', '2024-10-15', '2024-10-31', 1000.00),
 (20, 'Spring Break', '2024-03-15', '2024-03-31', 1200.00);
 INSERT INTO Campaign_Results (result_id, campaign_id, date, clicks, impressions,
 conversions)
 VALUES
 (1, 1, '2024-06-05', 100, 1000, 5),
 (2, 1, '2024-06-15', 150, 1500, 8),
 (3, 2, '2024-11-20', 75, 800, 3),
 (4, 2, '2024-12-05', 50, 500, 2),
 (5, 2, '2024-12-10', 100, 1000, 5),
 (6, 3, '2024-06-12', 80, 800, 4),
 (7, 3, '2024-06-15', 120, 1200, 6),
 (8, 4, '2024-06-10', 90, 1900, 5),
 (9, 4, '2024-06-15', 70, 700, 3),
 (10, 4, '2024-06-25', 110, 1100, 7),
 (11, 5, '2024-05-05', 60, 600, 3),
 (12, 5, '2024-05-10', 80, 800, 4),
 (13, 6, '2024-05-15', 120, 1800, 6),
 (14, 6, '2024-05-20', 150, 1500, 8),
 (15, 7, '2024-11-25', 200, 2000, 10),
 (16, 8, '2024-06-05', 100, 1000, 5),
 (17, 9, '2024-12-20', 80, 800, 4),
 (18, 9, '2024-12-25', 100, 1000, 5),
 (19, 10, '2024-10-20', 150, 2300, 8),
 (20, 10, '2024-10-25', 120, 1200, 6);