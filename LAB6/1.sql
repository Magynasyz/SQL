SELECT distinct n_name as countries
FROM customer,nation,orders
WHERE c_custkey=o_custkey
AND c_nationkey=n_nationkey
AND strftime('%Y', orders.o_orderdate)="1992"
AND strftime('%m', orders.o_orderdate)="05"
ORDER BY n_name;