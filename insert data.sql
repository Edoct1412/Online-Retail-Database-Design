INSERT INTO `customer` (customer_name, email, password) 
VALUES ('Fathonah Waluyo', 'FWaluyo@gmail.com', 'asda123'),
('Siska Tamba', 'STamba@gmail.com', '111rgh'),
('Yunita Haryanto', 'YHaryanto@gmail.com', '221aerg'),
('Vicky Sihombing', 'VickyS@gmail.com', '443aferg'),
('Zizi Laksmiwati', 'ZZLaksa@gmail.com', '963ethth'),
('Balapati Purwanti', 'BPurwa@gmail.com', 'esrg342'),
('Ratna Adriansyah', 'RatnaA@gmail.com', '808ehyt'),
('Uchita Fujiati', 'UchitaF@gmail.com', '564djk'),
('Garda Wijayanti', 'GardaW@gmail.com', '243ghtg'),
('Umaya Nasyidah', 'UmaNas@gmail.com', '900thjk');

INSERT INTO `order` (customer_id, order_date) 
VALUES (1, "2022-01-12"),
(2, "2023-01-15"),
(3, "2023-03-02"),
(4, "2023-05-18"),
(5, "2023-04-09"),
(6, "2023-03-27"),
(7, "2023-02-10"),
(8, "2023-05-05"),
(9, "2023-02-21"),
(10, "2023-04-14");

INSERT INTO `category` (category_name) 
VALUES ('Fashion Wanita'),
('Fashion Pria'),
('Elektronik'),
('Peralatan Rumah Tangga'),
('Olahraga dan Kesehatan'),
('Perawatan dan Kecantikan'),
('Mainan dan Hobi'),
('Alat Tulis dan Kantor'),
('Makanan dan Minuman'),
('Perabotan Rumah Tangga');

INSERT INTO `product` (product_name, price, category_id)
VALUES ("Sepatu Sneakers", 100000, 1),
("Kemeja Slim", 80000, 2),
("Smartphone Android", 1000000, 3),
("Keyboard", 105000, 3),
("Mouse", 65000, 3),
("Blender ", 200000, 4),
("Matras Yoga", 55000, 5),
("Masker Wajah", 13500, 6),
("Rubik", 150000, 7),
("Uno", 9500, 7),
("Buku Tulis", 5000, 8),
("Kopi Arabica", 33500, 9),
("Basreng", 22000, 9),
("Meja Makan Lipat", 350000, 10);

INSERT INTO `transaction` (order_id, product_id, quantity)
VALUES (1, 3, 1),
(1, 9, 1),
(1, 10, 1),
(2, 1, 1),
(2, 8, 3),
(3, 12, 2),
(4, 13, 5),
(5, 3, 1),
(6, 4, 1),
(6, 5, 1),
(7, 7, 1),
(8, 14, 1),
(8, 6, 1),
(9, 2, 10),
(10, 11, 5),
(10, 8, 8);