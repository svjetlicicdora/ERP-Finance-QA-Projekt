

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(100),
    OIB NVARCHAR(11),
    City NVARCHAR(50)
);

CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    InvoiceNumber NVARCHAR(20),
    CustomerID INT,
    InvoiceDate DATE,
    TotalAmount DECIMAL(10,2),
    VATAmount DECIMAL(10,2),
    DueDate DATE,

    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

CREATE TABLE InvoiceItems (
    ItemID INT PRIMARY KEY,
    InvoiceID INT,
    ProductName NVARCHAR(100),
    Quantity INT,
    Price DECIMAL(10,2),

    FOREIGN KEY (InvoiceID)
        REFERENCES Invoices(InvoiceID)
);