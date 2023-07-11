SELECT count(n_regionkey) as customers
FROM nation,customer,region
WHERE nation.n_nationkey=customer.c_nationkey
AND nation.n_regionkey=region.r_regionkey
AND r_name='EUROPE' AND r_name<>'AFRICA';
