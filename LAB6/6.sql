SELECT s_name as suppliers,s_acctbal as balance
FROM supplier
WHERE s_acctbal=(SELECT min(s_acctbal) FROM supplier);
