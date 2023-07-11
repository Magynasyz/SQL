SELECT sum(o_totalprice) as total_price
FROM orders,customer,nation,region
WHERE o_custkey=c_custkey
AND c_nationkey=n_nationkey
AND n_regionkey=r_regionkey
AND r_name='ASIA'
AND strftime('%Y',o_orderdate)="1994";