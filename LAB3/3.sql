SELECT COUNT(DISTINCT p_partkey) FROM part WHERE p_type LIKE '%STANDARD BURNISHED%' AND p_size IN (6,23,43);
