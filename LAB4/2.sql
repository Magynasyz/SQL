SELECT (l_quantity) as quantity,l_extendedprice as extended_price
FROM lineitem
WHERE l_shipmode="MAIL" AND l_shipdate="1998-02-28"
GROUP BY l_quantity
ORDER BY l_quantity DESC;