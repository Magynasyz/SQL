SELECT l_receiptdate as receipt_date,count(l_linenumber) as items_nbr
FROM orders
INNER JOIN customer
on c_custkey=o_custkey
INNER JOIN lineitem
on l_orderkey=o_orderkey
WHERE c_name="Customer#000000110"
GROUP BY l_receiptdate
ORDER BY l_receiptdate;