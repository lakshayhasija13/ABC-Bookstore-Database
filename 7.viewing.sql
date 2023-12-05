CREATE VIEW MonthlySales AS
SELECT
    DATE_FORMAT(Order.order_date, '%Y-%m') AS month,
    SUM(Order.total_price) AS total_sales
FROM
    Order
GROUP BY
    month;

SELECT * FROM MonthlySales;
