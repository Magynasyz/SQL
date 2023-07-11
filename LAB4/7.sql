SELECT count(o_orderpriority) as orders_nbr
FROM orders
INNER JOIN customer
ON orders.o_custkey=customer.c_custkey
WHERE orders.o_orderpriority='2-HIGH' AND customer.c_mktsegment='AUTOMOBILE'
AND (strftime('%Y', orders.o_orderdate) BETWEEN "1992" AND "1999");