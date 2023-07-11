SELECT o_orderpriority,count(p_partkey) as part_nbr
FROM lineitem 
INNER JOIN orders 
ON o_orderkey=l_orderkey
INNER JOIN part 
on l_partkey=p_partkey
where strftime('%Y', orders.o_orderdate)="1994" AND l_receiptdate<l_commitdate
GROUP BY o_orderpriority
ORDER BY count(p_name) DESC;
