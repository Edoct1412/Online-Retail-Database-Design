SELECT `category`.category_name, COUNT(`product`.category_id) jumlah_produk
FROM `product`
INNER JOIN `category` ON `category`.category_id = `product`.category_id
GROUP BY `product`.category_id
ORDER BY COUNT(`product`.category_id) DESC
LIMIT 1