SELECT count(DISTINCT c_custkey) as customers from(
SELECT  c_custkey,count( distinct o_orderkey) 
FROM customer,orders,nation,supplier,region,lineitem
WHERE c_custkey=o_custkey
AND l_orderkey=o_orderkey
AND l_suppkey=s_suppkey
AND s_nationkey=n_nationkey
and n_regionkey=r_regionkey
GROUP by c_custkey
EXCEPT 
SELECT c_custkey,count( distinct o_orderkey)
from customer,orders,nation,supplier,region,lineitem
WHERE c_custkey=o_custkey
AND l_orderkey=o_orderkey
AND l_suppkey=s_suppkey
AND s_nationkey=n_nationkey
and n_regionkey=r_regionkey
and r_name<>'ASIA'
GROUP BY c_custkey
);


select c_custkey from(
select c_custkey,count(DISTINCT o_orderkey)
from customer,orders,supplier,nation,region,lineitem
where c_custkey=o_custkey
and s_nationkey=n_nationkey
and n_regionkey=r_regionkey
and l_orderkey=o_orderkey
and l_suppkey=s_suppkey
group by c_custkey
EXCEPT
SELECT c_custkey,count(DISTINCT o_orderkey)
from customer,orders,supplier,nation,region,lineitem
where c_custkey=o_custkey
and s_nationkey=n_nationkey
and n_regionkey=r_regionkey
and l_orderkey=o_orderkey
and l_suppkey=s_suppkey
and r_name<>"ASIA"
group by c_custkey
HAVING count(o_orderkey)>=1);

