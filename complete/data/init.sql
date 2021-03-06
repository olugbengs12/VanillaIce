CREATE DATABASE dufunahelp;

  USE dufunahelp;

  CREATE TABLE products (
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    itemname VARCHAR(30) NOT NULL,
    quantity INT(3),
    date TIMESTAMP
  );

  CREATE TABLE brands (
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(30) NOT NULL
  );

  INSERT INTO `brands`
   (`brand_name`) VALUES
    ('Binatone'),
    ('Samsung'),
     ('LG');

  ALTER TABLE products
  ADD COLUMN brand_id INT(11) UNSIGNED NOT NULL,
  ADD FOREIGN KEY fk_brand(brand_id) REFERENCES brands(id) ON DELETE CASCADE;