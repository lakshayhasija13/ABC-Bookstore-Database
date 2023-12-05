DELIMITER //

CREATE TRIGGER AfterOrderInsert
AFTER INSERT ON OrderItem
FOR EACH ROW
BEGIN
    -- Update quantity_in_stock of the book after an order is placed
    UPDATE Book
    SET quantity_in_stock = quantity_in_stock - NEW.quantity
    WHERE book_id = NEW.book_id;
END //

DELIMITER ;

