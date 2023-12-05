Advanced Queries:

Find the customer who spent the most money.
Determine the best-selling author based on total book sales.
Identify customers who have placed orders for books in a specific category.

SELECT Customer.name, SUM(Order.total_price) AS total_spent
FROM Customer
JOIN Order ON Customer.customer_id = Order.customer_id
GROUP BY Customer.name
ORDER BY total_spent DESC
LIMIT 1;

SELECT Author.name, SUM(OrderItem.quantity) AS total_books_sold
FROM Author
JOIN Book ON Author.author_id = Book.author_id
JOIN OrderItem ON Book.book_id = OrderItem.book_id
GROUP BY Author.name
ORDER BY total_books_sold DESC
LIMIT 1;

SELECT DISTINCT Customer.name
FROM Customer
JOIN Order ON Customer.customer_id = Order.customer_id
JOIN OrderItem ON Order.order_id = OrderItem.order_id
JOIN Book ON OrderItem.book_id = Book.book_id
JOIN Category ON Book.category_id = Category.category_id
WHERE Category.name = '<specific_category_name>';
