SELECT `customer`.customer_name, `product`.product_name
FROM `transaction` 
INNER JOIN `order` ON `transaction`.order_id = `order`.order_id
INNER JOIN `customer` ON `order`.customer_id = `customer`.customer_id
INNER JOIN `product` ON `transaction`.product_id = `product`.product_id
WHERE `customer`.customer_id = 1

