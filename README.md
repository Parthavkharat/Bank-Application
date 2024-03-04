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

