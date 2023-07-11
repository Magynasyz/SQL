SELECT r_name as continents,count(o_orderstatus) as finished_orders
FROM orders,customer,nation,region
WHERE c_custkey=o_custkey
AND c_nationkey=n_nationkey
AND r_regionkey=n_regionkey
AND o_orderstatus='F'
GROUP BY r_name
ORDER BY finished_orders DESC;
