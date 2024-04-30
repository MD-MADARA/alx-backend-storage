-- We are all unique!
-- SQL script that creates a table users
CREATE TABLE IF NOT EXISTS `users` (
    `id` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `name` VARCHAR(100) 
);
