SELECT s_name as country,o_orderpriority order_priority,count(o_orderkey) as order_nbr
FROM part,supplier,lineitem,orders,region,nation
WHERE l_suppkey=s_suppkey
AND l_partkey=p_partkey
AND l_orderkey=o_orderkey
AND r_regionkey=n_regionkey
AND s_nationkey=n_nationkey
AND r_name='ASIA'
GROUP BY s_name,o_orderpriority
ORDER BY o_orderpriority, order_nbr;