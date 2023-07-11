SELECT count( distinct o_custkey) as customers_nbr
FROM orders o
INNER JOIN lineitem l
ON o.o_orderkey=l.l_orderkey
WHERE l_discount>='0.07';


SELECT count(DISTINCT c_custkey) from customer,orders,lineitem
where c_custkey=o_custkey and l_orderkey=o_orderkey
and l_discount>='0.07';
