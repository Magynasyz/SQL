SELECT part.p_type as part_type,max(lineitem.l_discount) as max_discount
FROM lineitem
INNER JOIN part
ON lineitem.l_partkey=part.p_partkey
WHERE part.p_type LIKE '%ANODIZED%'
GROUP BY part.p_type;