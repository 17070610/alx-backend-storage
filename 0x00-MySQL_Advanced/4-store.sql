-- Creates a trigger that updates item quantity after order insertion
CREATE TRIGGER after_order_insert
DELIMITER $$
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
        SET quantity = quantity - NEW.number
        WHERE name = NEW.item_name;
END $$
DELIMITER;
