SELECT MAX(l_discount) AS discount
FROM lineitem,orders
where l_discount<(SELECT avg(l_discount) FROM lineitem
where l_orderkey=o_orderkey
and o_orderdate BETWEEN '1998-04-01' and '1998-04-30'
);