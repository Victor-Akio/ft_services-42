DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND HOST NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test';
CREATE DATABASE wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'pma'@'%' IDENTIFIED BY '1234';