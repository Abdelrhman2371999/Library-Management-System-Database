-- Employees Table
CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    DateOfBirth DATE,
    Salary DECIMAL(10, 2),
    Email VARCHAR(100),
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Bonus DECIMAL(10, 2),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255),
    NumOfFloor INT,
    Super_ID INT,
    FOREIGN KEY (Super_ID) REFERENCES Employees(Emp_ID)
);

-- Floors Table
CREATE TABLE Floors (
    Number INT PRIMARY KEY,
    NumOfBlocks INT,
    HiringDate DATE,
    Mang_ID INT,
    FOREIGN KEY (Mang_ID) REFERENCES Employees(Emp_ID)
);

-- Users Table
CREATE TABLE Users (
    SSN CHAR(9) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

-- User Phone Table
CREATE TABLE User_Phone (
    SSN CHAR(9),
    Phone VARCHAR(15),
    PRIMARY KEY (SSN, Phone),
    FOREIGN KEY (SSN) REFERENCES Users(SSN)
);

-- Shelves Table
CREATE TABLE Shelf (
    Code INT PRIMARY KEY,
    NumberOfFloor INT
);

-- Categories Table
CREATE TABLE Category (
    ID INT PRIMARY KEY,
    Cat_Name VARCHAR(100)
);

-- Publishers Table
CREATE TABLE Publisher (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Authors Table
CREATE TABLE Author (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Books Table
CREATE TABLE Book (
    ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Publisher_ID INT,
    CodeShelf INT,
    Cat_ID INT,
    FOREIGN KEY (Publisher_ID) REFERENCES Publisher(ID),
    FOREIGN KEY (CodeShelf) REFERENCES Shelf(Code),
    FOREIGN KEY (Cat_ID) REFERENCES Category(ID)
);

-- Book Author Table
CREATE TABLE BookAuthor (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(ID),
    FOREIGN KEY (AuthorID) REFERENCES Author(ID)
);

-- Borrow Table
CREATE TABLE Borrow (
    SSN_User CHAR(9),
    BookID INT,
    Emp_ID INT,
    DateBorrowed DATE,
    Amount DECIMAL(10, 2),
    DueDate DATE,
    PRIMARY KEY (SSN_User, BookID, Emp_ID, DateBorrowed),
    FOREIGN KEY (SSN_User) REFERENCES Users(SSN),
    FOREIGN KEY (BookID) REFERENCES Book(ID),
    FOREIGN KEY (Emp_ID) REFERENCES Employees(Emp_ID)
);
