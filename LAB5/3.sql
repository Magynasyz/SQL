SELECT n_name as country,o_orderstatus as order_status,COUNT(o_orderstatus) as order_nbr
FROM nation,orders,customer,region
WHERE o_custkey=c_custkey
and n_regionkey=r_regionkey
and c_nationkey=n_nationkey
and r_name='MIDDLE EAST'
GROUP by n_name,o_orderstatus;
