-- SQL script that creates a trigger that resets the attribute valid_email only when the email has been changed.

DELIMITER //
CREATE TRIGGER email_validation
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    UPDATE users
    SET email_validation = 0
    WHERE NEW.email != OLD.email;
END;
//
DELIMITER ;
