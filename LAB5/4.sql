SELECT count(DISTINCT o_clerk) as order_clerks
FROM supplier,orders,nation,lineitem
WHERE l_suppkey=s_suppkey
AND l_orderkey=o_orderkey
AND s_nationkey=n_nationkey
AND n_name='RUSSIA';

