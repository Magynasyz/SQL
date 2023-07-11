SELECT cast(max(julianday(l_shipdate)-julianday(l_commitdate)) as integer) as completion_time
FROM lineitem;
