CREATE INDEX supplier_idx_d9ab06a3 ON supplier(s_suppkey, s_acctbal);
CREATE INDEX lineitem_idx_d55847c0 ON lineitem(l_orderkey);
CREATE INDEX customer_idx_f553fb62 ON customer(c_custkey, c_acctbal);
CREATE INDEX orders_idx_b063743d ON orders(o_orderkey, o_custkey);