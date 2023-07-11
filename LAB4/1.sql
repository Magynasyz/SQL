SELECT nation.n_name as country,count(s_nationkey) as suppliers_nbr
FROM nation
INNER JOIN supplier ON
nation.n_nationkey=supplier.s_nationkey
GROUP BY nation.n_name
ORDER by suppliers_nbr;