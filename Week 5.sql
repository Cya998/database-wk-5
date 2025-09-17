USE saledb;
CREATE INDEX IdxPhone
ON Customers(contact_phone);
SHOW INDEX FROM Customers;
ALTER TABLE Customers
DROP INDEX IdxPhone;
SHOW INDEX FROM Customers;

CREATE USER 'Bob'@'localhost'
IDENTIFIED BY 'S$cu3r3!';

GRANT INSERT
ON saledb
TO 'Bob'@'localhost';

ALTER USER 'Bob'@'localhost' IDENTIFIED BY  'P$55!23';