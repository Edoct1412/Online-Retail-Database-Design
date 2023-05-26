SELECT ROUND(AVG(`transaction`.quantity*`product`.price), 2) transaction_1_month_ago
FROM `transaction` 
INNER JOIN `order` ON `transaction`.order_id = `order`.order_id
INNER JOIN `product` ON `transaction`.product_id = `product`.product_id
WHERE `order`.order_date > DATE(NOW() - INTERVAL 1 MONTH)