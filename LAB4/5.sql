SELECT nation.n_name as country,round(avg(s_acctbal)) as balance
FROM supplier
INNER JOIN nation
ON supplier.s_nationkey=nation.n_nationkey
GROUP BY nation.n_name
ORDER BY nation.n_name;