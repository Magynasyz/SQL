SELECT DISTINCT n_name from nation,customer,supplier,region
WHERE nation.n_nationkey=customer.c_nationkey
and nation.n_nationkey=s_nationkey
and nation.n_regionkey=region.r_regionkey
and r_name='EUROPE';
