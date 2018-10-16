SELECT DISTINCT cname, amt FROM customers INNER JOIN orders ON customers.cnum = orders.cnum WHERE amt BETWEEN 1500 AND 5000;
