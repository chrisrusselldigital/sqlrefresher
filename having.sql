/* Clause order:

1) SELECT
2) FROM
3) WHERE
4) GROUP BY
5) HAVING
6) ORDER BY

HAVING is the "clean" way to filter a query that has been aggregated (i.e. uses a GROUP BY),
this is also commonly done using a subquery */

select year, month, Max(high) as high, MIN(low) as low from tutorial.aapl_historical_stock_price
GROUP by year, month
HAVING MAX(high) > 400
ORDER by year, month ASC
limit 100

-- i.e. "HAVING" is used to filter GROUP BY values
