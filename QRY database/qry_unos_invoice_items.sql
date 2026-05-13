INSERT INTO InvoiceItems VALUES
(1, 1, 'Laptop', 2, 500.00),
(2, 1, 'Monitor', 1, 250.00),
(3, 2, 'Tipkovnica', 5, 50.00),
(4, 2, 'Miš', 5, 25.00),
(5, 3, 'Printer', 2, 300.00),
(6, 4, 'Desk Chair', 4, 150.00),
(7, 5, 'USB Cable', 10, 10.00),
(8, 6, 'Server', 1, 1200.00),
(9, 7, 'Projector', 2, 800.00),
(10, 8, 'SSD Disk', 5, 120.00),
(11, 9, 'Router', 3, 80.00),
(12, 10, 'Tablet', 4, 150.00),
(13, 11, 'Monitor', 2, 200.00),

-- QA BUGOVI
(14, 12, 'Laptop', -2, 500.00), -- negativna količina
(15, 13, 'Keyboard', 0, 40.00), -- količina 0
(16, 14, 'Printer', 1, -300.00), -- negativna cijena
(17, 15, 'Mouse', 1000, 1.00), -- sumnjiva količina
(18, 3, 'Docking Station', 2, 150.00),
(19, 4, 'Office Desk', 1, 400.00),
(20, 5, 'Webcam', 3, 70.00);