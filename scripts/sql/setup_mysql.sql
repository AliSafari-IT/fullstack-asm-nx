-- Create a new database
CREATE DATABASE IF NOT EXISTS `asmDB`;

-- Create a new user and grant them access to the database
CREATE USER 'ali'@'localhost' IDENTIFIED BY 'Ali+123456/';
GRANT ALL PRIVILEGES ON `asmDB`.* TO 'ali'@'localhost';

FLUSH PRIVILEGES;

-- Connect to the database
USE asmDB;

-- Create a new table for users with a GUID primary key and specified properties
CREATE TABLE IF NOT EXISTS `users` (
    `id` char(36) NOT NULL, -- GUID format, typically stored as a CHAR(36)
    `name` varchar(255) NOT NULL, -- Full name
    `email` varchar(255) NOT NULL UNIQUE, -- Unique email address
    `password` varchar(255) NOT NULL, -- Encrypted password (min 6 characters)
    `username` varchar(255) NOT NULL, -- Unique username, generated if null
    `active` tinyint(1) NOT NULL DEFAULT 0, -- Active status (boolean)
    `admin` tinyint(1) NOT NULL DEFAULT 0, -- Admin status (boolean)
    `isConfirmed` tinyint(1) NOT NULL DEFAULT 0, -- Confirmation status (boolean)
    `isDeleted` tinyint(1) NOT NULL DEFAULT 0, -- Deletion flag (boolean)
    `isBanned` tinyint(1) NOT NULL DEFAULT 0, -- Banned status (boolean)
    PRIMARY KEY (`id`),
    UNIQUE (`email`), -- Ensure email is unique
    UNIQUE (`username`) -- Ensure username is unique
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




