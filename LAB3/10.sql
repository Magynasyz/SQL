SELECT strftime('%m', l_shipdate) AS "per_month",SUM(l_quantity) as "tot_month"
FROM lineitem
WHERE strftime('%Y', l_shipdate)="1996"
GROUP BY strftime('%m', l_shipdate);

