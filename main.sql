DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS Book;
DROP TABLE IF EXISTS LibraryBook;
DROP TABLE IF EXISTS LibraryBranch;
DROP TABLE IF EXISTS Borrower;
DROP TABLE IF EXISTS Loan;
DROP TABLE IF EXISTS Library;

CREATE TABLE `Author` (
  `Name` varchar(50),
  PRIMARY KEY (`Name`)
);

CREATE TABLE `Book` (
  `Title` varchar(50),
  `Publisher` varchar(50),
  `Author` varchar(50),
  `BookID` int,
  PRIMARY KEY (`BookID`),
  FOREIGN KEY (Author) REFERENCES Author(Name)
);

CREATE TABLE `LibraryBook` (
  `bookID` int,
  `LibraryBranchID` int,
  `copies` int,
  `LibraryBookID` int,
  PRIMARY KEY (`LibraryBookID`),
  FOREIGN KEY (bookID) REFERENCES Book(BookID),
  FOREIGN KEY (LibraryBranchID) REFERENCES LibraryBranch(LibraryBranchID)
);

CREATE TABLE `LibraryBranch` (
  `Name` varchar(50),
  `Address` varchar(50),
  `LibraryBranchID` int,
  `LibraryID` int,
  PRIMARY KEY (`LibraryBranchID`),
  FOREIGN KEY (LibraryID) REFERENCES Library(LibraryID)
);

CREATE TABLE `Borrower` (
  `Name` varchar(50),
  `address` varchar(50),
  `phone` int,
  `BorrowerID` int,
  PRIMARY KEY (`BorrowerID`)
);

CREATE TABLE `Loan` (
  `Lending Date` datetime,
  `Due Date` datetime,
  `BorrowerID` int,
  `LibraryBranchID` int,
  `bookID` int,
  `LoanID` int,
  PRIMARY KEY (LoanID),
  FOREIGN KEY (BorrowerID) REFERENCES Borrower(BorrowerID),
  FOREIGN KEY (LibraryBranchID) REFERENCES LibraryBranch(LibraryBranchID),
  FOREIGN KEY (bookID) REFERENCES LibraryBook(bookID)
);

CREATE TABLE `Library` (
  `Name` varchar(50),
  `LibraryID` int,
  PRIMARY KEY (`LibraryID`)
);
