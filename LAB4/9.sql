SELECT supplier.s_name as supplier_name,supplier.s_acctbal as balance
FROM supplier
INNER JOIN nation
ON supplier.s_nationkey=nation.n_nationkey
WHERE nation.n_name='UNITED STATES' AND supplier.s_acctbal>=1500
GROUP BY s_name
ORDER BY supplier.s_name;