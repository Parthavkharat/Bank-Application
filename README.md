This is a simple Bank Application created using html,css,jsp and mysql 
To setup this project to database create a database Database Name:-bank then create a table Table Name:-users to create the tabel users use following SQl queries to executive it 

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    address VARCHAR(255) NOT NULL,
    balance DECIMAL(10,2) DEFAULT '0.00',
    account_number VARCHAR(12)
);

+----------------+---------------+------+-----+---------+----------------+
| Field          | Type          | Null | Key | Default | Extra          |
+----------------+---------------+------+-----+---------+----------------+
| id             | int           | NO   | PRI | NULL    | auto_increment |
| fullname       | varchar(100)  | NO   |     | NULL    |                |
| username       | varchar(50)   | NO   | UNI | NULL    |                |
| password       | varchar(50)   | NO   |     | NULL    |                |
| contact        | varchar(20)   | NO   |     | NULL    |                |
| address        | varchar(255)  | NO   |     | NULL    |                |
| balance        | decimal(10,2) | YES  |     | 0.00    |                |
| account_number | varchar(12)   | YES  |     | NULL    |                |
+----------------+---------------+------+-----+---------+----------------+  
