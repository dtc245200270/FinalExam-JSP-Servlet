CREATE DATABASE IF NOT EXISTS product_management;
USE product_management;

CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO products (name, price, quantity) VALUES
('Bàn phím cơ AKKO', 1250000, 15),
('Chuột không dây Logitech', 450000, 30),
('Tai nghe Gaming HyperX', 1890000, 10);
