-- SQL script that creates a trigger that resets the attribute valid_email only when the email has been changed.

DELIMITER //
CREATE TRIGGER email_validation
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    UPDATE users
    SET NEW.valid_email = 0
    WHERE OLD.email != NEW.email
END;
//
DELIMITER ;
