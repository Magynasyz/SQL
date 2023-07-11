SELECT region1,region2,round(sum(o_totalprice)) as total_price
FROM
(SELECT s_suppkey,r_name as region2,o_custkey,o_totalprice
FROM supplier,nation,region,lineitem,orders
where n_nationkey = s_nationkey
and r_regionkey = n_regionkey
and l_suppkey = s_suppkey
and l_orderkey = o_orderkey)
INNER JOIN
(SELECT c_custkey,r_name as region1
FROM customer,nation,region
where n_nationkey = c_nationkey
and r_regionkey = n_regionkey)
ON c_custkey = o_custkey
GROUP BY region2,region1
HAVING region2 <> region1
ORDER BY region2,region1;