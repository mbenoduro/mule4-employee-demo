CREATE DATABASE IF NOT EXISTS ms3;

CREATE USER IF NOT EXISTS 'thanos'@'localhost' IDENTIFIED BY 'avengers';

CREATE TABLE IF NOT EXISTS ms3.employee (
    EmployeeID int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    DOB date,
    Gender varchar(255),
    Title varchar(255),
    UNIQUE (EmployeeID),
    PRIMARY KEY (EmployeeID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS ms3.employee_address (
    EmployeeAddressID int NOT NULL AUTO_INCREMENT,
    EmployeeID int NOT NULL,
    Type varchar(255) NOT NULL,
    Number int NOT NULL,
    Street varchar(255) NOT NULL,
    Unit int,
    City varchar(255) NOT NULL,
    State varchar(255) NOT NULL,
    Zipcode int NOT NULL,
    UNIQUE (EmployeeAddressID),
    PRIMARY KEY (EmployeeAddressID),
    FOREIGN KEY (EmployeeID) references employee(EmployeeID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS ms3.employee_contact (
    EmployeeContactID int NOT NULL AUTO_INCREMENT,
    EmployeeID int NOT NULL,
    Type varchar(255) NOT NULL,
    Val varchar(255) NOT NULL,
    Preferred BOOLEAN,
    UNIQUE (EmployeeContactID),
    PRIMARY KEY (EmployeeContactID),
    FOREIGN KEY (EmployeeID) references employee(EmployeeID)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;