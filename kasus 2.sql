SELECT `product`.product_name, SUM(`transaction`.quantity) produk_terbeli 
FROM `transaction` 
INNER JOIN `product` ON `transaction`.product_id = `product`.product_id
GROUP BY `transaction`.product_id
ORDER BY SUM(`transaction`.quantity) DESC
LIMIT 3