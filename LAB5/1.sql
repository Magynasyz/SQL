SELECT s_name as supplier,count(p_size) as parts_nbr
FROM part,supplier,nation,partsupp,region
WHERE s_nationkey=n_nationkey 
AND n_regionkey=r_regionkey
AND p_partkey=ps_partkey
AND ps_suppkey=s_suppkey
AND p_size<'10' 
AND n_name='INDIA'
GROUP BY s_name;

select n_name from customer,nation,orders
where o_custkey=c_custkey
and c_nationkey=n_nationkey
and strftime('%Y-%m',o_orderdate)="1998-05"
GROUP BY n_name
ORDER BY n_name asc;

SELECT l_receiptdate,count(l_orderkey) 
from lineitem,orders,customer
where l_orderkey=o_orderkey
and o_custkey=c_custkey
and c_name="Customer#000000110"
GROUP BY l_receiptdate
ORDER BY l_receiptdate;

SELECT sum(o_totalprice)
from orders,customer,nation,region
where o_custkey=c_custkey
and c_nationkey=n_nationkey
and n_regionkey=r_regionkey
and r_name="ASIA" and strftime('%Y',o_orderdate)='1994';

SELECT r_name,count(o_orderstatus) as status
from orders,region,nation,customer
where o_custkey=c_custkey
and c_nationkey=n_nationkey
and n_regionkey=r_regionkey
and o_orderstatus="F"
GROUP BY r_name
ORDER BY status DESC;


select n_name,strftime('%Y',o_orderdate) as year,count(o_orderpriority)
from orders,nation,supplier,lineitem
WHERE o_orderkey=l_orderkey
and l_suppkey=s_suppkey
and s_nationkey=n_nationkey
and o_orderpriority="5-LOW"
GROUP by n_name,year
ORDER by n_name,year;

select max(l_discount) FROM lineitem,orders
where l_discount<(SELECT avg(l_discount) from lineitem,orders
where l_orderkey=o_orderkey
and strftime('%Y-%m',o_orderdate)='1998-04'
);

SELECT MAX(l_discount) AS discount
FROM lineitem,orders
where l_discount<(SELECT avg(l_discount) FROM lineitem
where l_orderkey=o_orderkey
and o_orderdate BETWEEN '1998-04-01' and '1998-04-30'
);