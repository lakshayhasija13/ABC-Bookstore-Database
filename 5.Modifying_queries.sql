Modify Data:

Add a new book to the inventory.
Update the customer information.
Delete a specific order and its associated items.

-- Assuming you want to add a new book to the Fiction category written by a new author
INSERT INTO Author (author_id, name, bio)
VALUES
    (4, 'New Author', 'Exciting new author with fresh perspectives.');

INSERT INTO Book (book_id, title, ISBN, price, quantity_in_stock, author_id, category_id)
VALUES
    (5, 'New Adventure', 'ISBN567890', 29.99, 50, 4, 1);


-- Assuming you want to update the phone number for a specific customer
UPDATE Customer
SET phone = '987-654-3210'
WHERE customer_id = <customer_id>;

-- Assuming you want to delete order with order_id = 3
DELETE FROM OrderItem WHERE order_id = 3;
DELETE FROM Order WHERE order_id = 3;
