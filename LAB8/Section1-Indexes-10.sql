CREATE INDEX region_idx_0b7b0a24 ON region(r_regionkey, r_name);
CREATE INDEX region_idx_632c978e ON region(r_regionkey);
CREATE INDEX nation_idx_18de499f ON nation(n_nationkey);
CREATE INDEX supplier_idx_464097db ON supplier(s_suppkey);
CREATE INDEX lineitem_idx_2dd29ce0 ON lineitem(l_orderkey, l_suppkey);
CREATE INDEX orders_idx_3b7bd40e ON orders(o_custkey);
CREATE INDEX customer_idx_1cb1bd02 ON customer(c_custkey);