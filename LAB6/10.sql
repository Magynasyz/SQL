SELECT r_name as country,count(s_name) as suppliers_nbr
FROM supplier
INNER JOIN nation  ON s_nationkey=n_nationkey
INNER JOIN region  ON n_regionkey=r_regionkey
INNER JOIN
(SELECT r_name as region, avg(s_acctbal) AS account 
FROM supplier,nation,region 
where s_nationkey=n_nationkey
and n_regionkey=r_regionkey
GROUP BY region
ORDER BY region) AS a ON r_name=a.region
WHERE account<s_acctbal
GROUP BY r_name
ORDER BY r_name;