CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(20)
);
INSERT INTO Customer (customer_id, name, email, phone)
VALUES
    (1, 'John Doe', 'john.doe@email.com', '123-456-7890'),
    (2, 'Jane Smith', 'jane.smith@email.com', '987-654-3210'),
    (3, 'Bob Johnson', 'bob.johnson@email.com', '456-789-0123');
CREATE TABLE Author (
    author_id INT PRIMARY KEY,
    name VARCHAR(255),
    bio TEXT
);
INSERT INTO Author (author_id, name, bio)
VALUES
    (1, 'Alice Author', 'Bestselling author with a passion for storytelling.'),
    (2, 'Bob Writer', 'Experienced writer with a focus on fiction.'),
    (3, 'Charlie Novelist', 'Award-winning novelist known for unique narratives.');
CREATE TABLE Category (
    category_id INT PRIMARY KEY,
    name VARCHAR(100)
);
INSERT INTO Category (category_id, name)
VALUES
    (1, 'Fiction'),
    (2, 'Non-Fiction'),
    (3, 'Mystery'),
    (4, 'Science Fiction');
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    ISBN VARCHAR(20),
    price DECIMAL(10, 2),
    quantity_in_stock INT,
    author_id INT,
    category_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);
INSERT INTO Book (book_id, title, ISBN, price, quantity_in_stock, author_id, category_id)
VALUES
    (1, 'The Adventure Begins', 'ISBN123456', 19.99, 100, 1, 1),
    (2, 'Data Science 101', 'ISBN789012', 29.99, 75, 2, 2),
    (3, 'Murder Mystery', 'ISBN345678', 24.99, 50, 3, 3),
    (4, 'Galactic Odyssey', 'ISBN901234', 34.99, 120, 1, 4);
CREATE TABLE Order (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
INSERT INTO Order (order_id, customer_id, order_date, total_price)
VALUES
    (1, 1, '2023-01-15', 59.98),
    (2, 2, '2023-02-20', 29.99),
    (3, 1, '2023-03-10', 69.98),
    (4, 3, '2023-04-05', 34.99);

CREATE TABLE OrderItem (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Order(order_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);
INSERT INTO OrderItem (order_item_id, order_id, book_id, quantity, subtotal)
VALUES
    (1, 1, 1, 2, 39.98),
    (2, 2, 2, 1, 29.99),
    (3, 3, 3, 3, 74.97),
    (4, 4, 4, 1, 34.99);



