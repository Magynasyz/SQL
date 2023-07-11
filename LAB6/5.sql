SELECT n_name as country,strftime('%Y',o_orderdate) as year,count(o_orderpriority) as order_nbr
FROM orders,supplier,nation,lineitem
WHERE o_orderkey=l_orderkey
AND l_suppkey=s_suppkey
AND s_nationkey=n_nationkey
AND o_orderpriority='5-LOW'
GROUP BY n_name,year
ORDER BY n_name,o_orderdate;