DROP DATABASE IF EXISTS thebestcompany_db;
CREATE DATABASE thebestcompany_db;

USE thebestcompany_db;

CREATE TABLE department (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
);

CREATE TABEL role (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL, 
    salary DECIMAL (7,2), 
    department_id INT,
    FOREIGN KEY (department_id),
    REFERANCES department(id),
    ON DELETE SET NULL
);

CREATE TABEL employee (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
        FOREIGN KEY (role_id),
        REFERANCES role(id),
        ON DELETE SET NULL,
    manager_id INT
);