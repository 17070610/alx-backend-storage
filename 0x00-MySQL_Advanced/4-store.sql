-- Creates a trigger that updates item quantity after order insertion

DELIMITER//

CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE id = NEW.item_id;
END//

DELIMITER;
