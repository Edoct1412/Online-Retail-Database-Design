CREATE TABLE `customer` (
    `customer_id` INT NOT NULL AUTO_INCREMENT,
    `customer_name` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `password` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`customer_id`)
);

CREATE TABLE `order` (
    `order_id` INT NOT NULL AUTO_INCREMENT,
    `customer_id` INT NOT NULL,
    `order_date` DATE NOT NULL,
    PRIMARY KEY (`order_id`),
    CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `transaction` (
    `transaction_id` INT NOT NULL AUTO_INCREMENT,
    `order_id` INT NOT NULL,
    `product_id` INT NOT NULL,
    `quantity` INT NOT NULL,
    `subtotal` INT NOT NULL,
    PRIMARY KEY (`transaction_id`),
    CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `product` (
    `product_id` INT NOT NULL AUTO_INCREMENT,
    `product_name` VARCHAR(50) NOT NULL DEFAULT '',
    `price` INT NOT NULL,
    `category_id` INT NOT NULL,
    PRIMARY KEY (`product_id`),
    CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `category` (
    `category_id` INT NOT NULL AUTO_INCREMENT,
    `category_name` VARCHAR(50) NOT NULL DEFAULT '',
    PRIMARY KEY (`category_id`)
);