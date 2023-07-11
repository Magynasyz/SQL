SELECT nation.n_name as country,count(supplier.s_nationkey) as suppliers_nbr,round(avg(s_acctbal)) as balance
FROM supplier
INNER JOIN nation
ON supplier.s_nationkey=nation.n_nationkey
GROUP BY nation.n_name
HAVING count(supplier.s_nationkey)>=3
ORDER BY nation.n_name;

