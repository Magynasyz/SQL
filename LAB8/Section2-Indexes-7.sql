CREATE INDEX region_idx_0b7b0a24 ON region(r_regionkey, r_name);
CREATE INDEX nation_idx_d87fd5cd ON nation(n_nationkey, n_regionkey);
CREATE INDEX customer_idx_c0dce902 ON customer(c_custkey, c_nationkey);
CREATE INDEX orders_idx_1a9efb9b ON orders(o_orderkey);
CREATE INDEX lineitem_idx_e9f5e4c0 ON lineitem(l_suppkey, l_orderkey);
CREATE INDEX supplier_idx_2802d374 ON supplier(s_nationkey);
CREATE INDEX nation_idx_23dc294a ON nation(n_regionkey);
CREATE INDEX region_idx_0071962a ON region(r_name);