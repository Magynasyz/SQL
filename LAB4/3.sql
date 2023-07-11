SELECT round(sum(c_acctbal)) as total_balance
FROM customer
INNER JOIN nation
ON customer.c_nationkey=nation.n_nationkey
WHERE nation.n_name='INDONESIA' AND customer.c_mktsegment='HOUSEHOLD';