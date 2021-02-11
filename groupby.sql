select year, count(*) as count from tutorial.aapl_historical_stock_price
GROUP BY year
limit 100

-- GROUP BY the year. In other words, each COUNT needs to be grouped by its respective year!

select year, month, count(*) as count from tutorial.aapl_historical_stock_price
GROUP BY year, month
limit 100

-- Multiple columns requires multiple groupbys here
