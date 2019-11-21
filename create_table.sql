DROP TABLE IF EXISTS Author;
CREATE TABLE "Author"
(
  name varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (name)
);

DROP TABLE IF EXISTS Book;
CREATE TABLE "Book"
(
  "Title" varchar(50) NOT NULL DEFAULT '',
  "Publisher" varchar(50) NOT NULL DEFAULT '',
  "Author" varchar(50) NOT NULL DEFAULT '',
  "BookID" int NOT NULL,
  PRIMARY KEY (BookID),
  FOREIGN KEY (Author) REFERENCES Author(name)
);

DROP TABLE IF EXISTS LibraryBook;
CREATE TABLE "LibraryBook"
(
  "bookID" int NOT NULL,
  "LibraryBranchID" int NOT NULL,
  "copies" int NOT NULL,
  "LibraryBookID" int NOT NULL,
  PRIMARY KEY (LibraryBookID),
  FOREIGN KEY (bookID) REFERENCES Book(BookID),
  FOREIGN KEY (LibraryBranchID) REFERENCES LibraryBranch(LibraryBranchID)
);

DROP TABLE IF EXISTS LibraryBranch;
CREATE TABLE "LibraryBranch"
(
  "Name" varchar(50) NOT NULL DEFAULT '',
  "Address" varchar(50) NOT NULL DEFAULT '',
  "LibraryBranchID" int NOT NULL,
  "LibraryID" int NOT NULL,
  PRIMARY KEY (LibraryBranchID),
  FOREIGN KEY (LibraryID) REFERENCES Library(LibraryID)
);

DROP TABLE IF EXISTS Borrower;
CREATE TABLE "Borrower"
(
  "Name" varchar(50) NOT NULL DEFAULT '',
  "address" varchar(50) NOT NULL DEFAULT '',
  "phone" int NOT NULL,
  "BorrowerID" int NOT NULL ,
  PRIMARY KEY (BorrowerID)
);

DROP TABLE IF EXISTS Loan;
CREATE TABLE "Loan"
(
  "Lending Date" timestamp NOT NULL ,
  "Due Date" timestamp NOT NULL,
  "BorrowerID" int NOT NULL ,
  "LibraryBranchID" int NOT NULL,
  "bookID" int NOT NULL ,
  "LoanID" int NOT NULL ,
  PRIMARY KEY (LoanID),
  FOREIGN KEY (BorrowerID) REFERENCES Borrower(BorrowerID),
  FOREIGN KEY (LibraryBranchID) REFERENCES LibraryBranch(LibraryBranchID),
  FOREIGN KEY (bookID) REFERENCES LibraryBook(bookID)
);

DROP TABLE IF EXISTS Library;
CREATE TABLE "Library"
(
  "Name" varchar(50) NOT NULL DEFAULT '',
  "LibraryID" int NOT NULL,
  PRIMARY KEY (LibraryID)
);
