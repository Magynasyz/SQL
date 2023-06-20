SELECT (l_orderkey),max(l_extendedprice*(1-l_discount))
FROM lineitem
WHERE NOT l_shipdate='1994-11-28'
ORDER BY l_orderkey ASC;