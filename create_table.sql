DROP TABLE IF EXISTS Author;
CREATE TABLE "Author"
(
  name varchar(50),
  PRIMARY KEY (name)
);

DROP TABLE IF EXISTS Book;
CREATE TABLE "Book"
(
  "Title" varchar(50),
  "Publisher" varchar(50),
  "Author" varchar(50),
  "BookID" int,
  PRIMARY KEY (BookID),
  FOREIGN KEY (Author) REFERENCES Author(name)
);

DROP TABLE IF EXISTS LibraryBook;
CREATE TABLE "LibraryBook"
(
  "bookID" int,
  "LibraryBranchID" int,
  "copies" int,
  "LibraryBookID" int,
  PRIMARY KEY (LibraryBookID),
  FOREIGN KEY (bookID) REFERENCES Book(BookID),
  FOREIGN KEY (LibraryBranchID) REFERENCES LibraryBranch(LibraryBranchID)
);

DROP TABLE IF EXISTS LibraryBranch;
CREATE TABLE "LibraryBranch"
(
  "Name" varchar(50),
  "Address" varchar(50),
  "LibraryBranchID" int,
  "LibraryID" int,
  PRIMARY KEY (LibraryBranchID),
  FOREIGN KEY (LibraryID) REFERENCES Library(LibraryID)
);

DROP TABLE IF EXISTS Borrower;
CREATE TABLE "Borrower"
(
  "Name" varchar(50),
  "address" varchar(50),
  "phone" int,
  "BorrowerID" int,
  PRIMARY KEY (BorrowerID)
);

DROP TABLE IF EXISTS Loan;
CREATE TABLE "Loan"
(
  "Lending Date" timestamp,
  "Due Date" timestamp,
  "BorrowerID" int,
  "LibraryBranchID" int,
  "bookID" int,
  "LoanID" int,
  PRIMARY KEY (LoanID),
  FOREIGN KEY (BorrowerID) REFERENCES Borrower(BorrowerID),
  FOREIGN KEY (LibraryBranchID) REFERENCES LibraryBranch(LibraryBranchID),
  FOREIGN KEY (bookID) REFERENCES LibraryBook(bookID)
);

DROP TABLE IF EXISTS Library;
CREATE TABLE "Library"
(
  "Name" varchar(50),
  "LibraryID" int,
  PRIMARY KEY (LibraryID)
);
