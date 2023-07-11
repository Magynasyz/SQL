SELECT count( distinct o_orderkey) as order_nbr
FROM customer,supplier,orders,lineitem
WHERE c_custkey=o_custkey
and l_suppkey=s_suppkey
and l_orderkey=o_orderkey
and c_acctbal<0 
and s_acctbal<0;
