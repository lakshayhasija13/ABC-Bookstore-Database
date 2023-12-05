Indexing:

Identify and create indexes on columns that are frequently used in search operations.

-- Index on Customer.customer_id
CREATE INDEX idx_customer_id ON Customer(customer_id);

-- Index on Author.author_id
CREATE INDEX idx_author_id ON Author(author_id);

-- Index on Book.author_id
CREATE INDEX idx_book_author_id ON Book(author_id);

-- Index on Book.category_id
CREATE INDEX idx_book_category_id ON Book(category_id);

-- Index on Order.customer_id
CREATE INDEX idx_order_customer_id ON Order(customer_id);

-- Index on OrderItem.book_id
CREATE INDEX idx_order_item_book_id ON OrderItem(book_id);

-- Index on OrderItem.order_id
CREATE INDEX idx_order_item_order_id ON OrderItem(order_id);
