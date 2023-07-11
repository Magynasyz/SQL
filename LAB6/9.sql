SELECT count(p_partkey) as supplied_parts
FROM (SELECT n_name,p_partkey,ps_supplycost*ps_availqty as tot
FROM part,partsupp,supplier,nation
where p_partkey=ps_partkey
and s_suppkey=ps_suppkey
and s_nationkey=n_nationkey 
ORDER BY tot DESC
LIMIT(SELECT count(ps_supplycost*ps_availqty)
FROM part,partsupp,supplier,nation
where p_partkey=ps_partkey
and s_suppkey=ps_suppkey
and s_nationkey=n_nationkey)/20)
WHERE n_name="GERMANY";