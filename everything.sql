CREATE TABLE `Author` (
  name varchar(50),
  PRIMARY KEY (name)
);

CREATE TABLE `Book` (
  `Title` varchar(50),
  `Publisher` varchar(50),
  `Author` varchar(50),
  `BookID` int,
  PRIMARY KEY (BookID),
  FOREIGN KEY (Author) REFERENCES Author(name)
);

CREATE TABLE `LibraryBook` (
  `bookID` int,
  `LibraryBranchID` int,
  `copies` int,
  `LibraryBookID` int,
  PRIMARY KEY (LibraryBookID),
  FOREIGN KEY (bookID) REFERENCES Book(BookID),
  FOREIGN KEY (LibraryBranchID) REFERENCES LibraryBranch(LibraryBranchID)
);

CREATE TABLE `LibraryBranch` (
  `Name` varchar(50),
  `Address` varchar(50),
  `LibraryBranchID` int,
  `LibraryID` int,
  PRIMARY KEY (LibraryBranchID),
  FOREIGN KEY (LibraryID) REFERENCES Library(LibraryID)
);

CREATE TABLE `Borrower` (
  `Name` varchar(50),
  `address` varchar(50),
  `phone` int,
  `BorrowerID` int,
  PRIMARY KEY (BorrowerID)
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
  PRIMARY KEY (LibraryID)
);

INSERT INTO 'Library' (Name, LibraryID) VALUES ('NTNU', 1);

INSERT INTO LibraryBranch (Name, Address, LibraryBranchID, LibraryID) VALUES ('Ålesund', 'Larsgårdsvegen 2', 1, 1);
INSERT INTO LibraryBranch (Name, Address, LibraryBranchID, LibraryID) VALUES ('Gjøvik', 'Teknologivegen 22', 2, 1);
INSERT INTO LibraryBranch (Name, Address, LibraryBranchID, LibraryID) VALUES ('Trondheim', 'Høgskoleringen 1', 3, 1);

INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Automated local task-force', 'Hudson-Harris', 'Chelsey Hamill', 100);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Robust executive extranet', 'Kautzer, Welch and Considine', 'Kristofer Bashirian', 101);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Up-sized grid-enabled architecture', 'Von-Waters', 'Octavia Walsh', 102);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Fully-configurable background protocol', 'Mayert, Gusikowski and Kihn', 'Camren Pouros Sr.', 103);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Up-sized analyzing core', 'Conroy-Carter', 'Catharine Goodwin', 104);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Advanced transitional access', 'Kunde, Harber and Wisozk', 'Dr. Jaylen Feeney', 105);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Universal eco-centric emulation', 'Jakubowski and Sons', 'Mr. Kay Padberg Jr.', 106);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Pre-emptive clear-thinking leverage', 'Kuhic-Kilback', 'Aiden Senger', 107);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Assimilated user-facing intranet', 'Bartoletti, Windler and Satterfield', 'Dr. Samson Harber', 108);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('User-friendly multi-state function', 'Mills, Morissette and Waelchi', 'Dr. Letitia Bins', 109);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Configurable exuding challenge', 'Ferry Inc', 'Dr. Letitia Bins', 110);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Implemented executive hardware', 'Zieme, Aufderhar and Gutkowski', 'Dr. Gunnar Blanda Sr.', 111);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Synergistic systemic groupware', 'Jacobs PLC', 'Dr. Samson Harber', 112);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Re-contextualized analyzing knowledgebase', 'Ebert-VonRueden', 'Catharine Goodwin', 113);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Adaptive discrete moderator', 'Nicolas and Sons', 'Aiden Senger', 114);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Sharable non-volatile service-desk', 'Greenholt-Larson', 'Chelsey Hamill', 115);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Future-proofed intangible hardware', 'Mraz PLC', 'Jaren Skiles', 116);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Exclusive fault-tolerant info-mediaries', 'Rolfson Group', 'Frankie Kris', 117);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Cross-platform optimal extranet', 'Bradtke-Pfeffer', 'Jaren Skiles', 118);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Managed motivating knowledgeuser', 'Homenick-Mante', 'Kitty Towne Jr.', 119);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Programmable systematic infrastructure', 'Abshire LLC', 'Wilhelmine Mertz Sr.', 120);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Devolved scalable capacity', 'Deckow-Kessler', 'Mrs. Elenora Turner', 121);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Synergized multimedia core', 'Ziemann, Ledner and Reynolds', 'Camren Pouros Sr.', 122);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Phased tangible frame', 'Marquardt Ltd', 'Noe Armstrong', 123);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Seamless interactive alliance', 'Renner Inc', 'Dr. Gunnar Blanda Sr.', 124);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Programmable 5thgeneration application', 'Raynor-Nikolaus', 'Jeffry Denesik', 125);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Seamless 24/7 algorithm', 'Block Inc', 'Frankie Kris', 126);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Profound system-worthy approach', 'Schumm, Langosh and Howell', 'Trenton Halvorson', 127);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Pre-emptive directional data-warehouse', 'Von, Kassulke and Hamill', 'Prof. Margaretta Maggio IV', 129);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Synergized bi-directional protocol', 'Altenwerth, Harvey and McDermott', 'Dr. Jaylen Feeney', 130);


INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (124, 1, 6, 300);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (130, 3, 4, 301);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (101, 2, 7, 302);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (105, 3, 4, 303);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (109, 1, 8, 304);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (103, 1, 5, 305);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (101, 2, 1, 306);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (108, 3, 5, 307);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (106, 1, 1, 308);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (117, 3, 1, 309);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (121, 1, 4, 310);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (114, 3, 7, 311);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (110, 2, 6, 312);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (107, 2, 1, 313);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (105, 3, 8, 314);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (116, 2, 4, 315);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (115, 1, 7, 316);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (129, 2, 2, 317);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (101, 2, 7, 318);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (122, 2, 4, 319);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (106, 1, 4, 320);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (100, 3, 8, 321);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (104, 2, 1, 322);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (124, 2, 3, 323);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (123, 3, 7, 324);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (119, 2, 5, 325);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (125, 2, 4, 326);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (120, 3, 1, 327);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (121, 1, 7, 328);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (102, 3, 9, 329);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (110, 2, 4, 330);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (102, 3, 8, 331);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (115, 1, 4, 332);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (112, 1, 4, 333);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (107, 2, 2, 334);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (100, 1, 8, 335);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (108, 3, 9, 336);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (111, 3, 7, 337);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (105, 3, 6, 339);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (104, 2, 2, 340);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (122, 2, 0, 341);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (116, 2, 6, 342);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (103, 1, 4, 343);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (109, 2, 5, 344);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (103, 1, 3, 345);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (111, 3, 6, 346);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (127, 1, 2, 347);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (109, 3, 7, 348);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (125, 2, 7, 349);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (100, 2, 9, 350);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (118, 1, 7, 351);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (106, 1, 5, 352);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (102, 3, 5, 353);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (113, 2, 7, 354);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (107, 2, 4, 355);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (126, 3, 8, 356);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (118, 1, 3, 357);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (114, 3, 3, 358);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (108, 3, 9, 359);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (126, 2, 8, 360);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (120, 3, 1, 361);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (129, 2, 8, 362);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (119, 2, 0, 363);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (104, 2, 6, 364);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (117, 3, 9, 365);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (112, 3, 8, 366);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (113, 2, 3, 367);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (127, 1, 9, 368);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (130, 1, 9, 369);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (123, 2, 9, 370);


INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES ('2018/10/10', 2019-10-10, 247, 2, 118, 430);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 209, 3, 102, 431);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 202, 2, 100, 432);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 212, 3, 103, 433);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 219, 3, 130, 434);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 203, 3, 100, 435);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 223, 1, 100, 436);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 220, 1, 130, 437);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 213, 1, 104, 438);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 218, 3, 105, 439);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 216, 1, 105, 440);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 238, 2, 113, 441);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 224, 2, 101, 442);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 209, 2, 124, 443);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 225, 3, 101, 444);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 227, 2, 102, 445);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 244, 2, 116, 446);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 246, 1, 117, 447);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 211, 2, 103, 448);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 250, 2, 119, 449);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 216, 3, 127, 450);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 221, 3, 106, 451);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 231, 1, 110, 452);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 229, 1, 102, 453);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 214, 2, 104, 454);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 226, 1, 101, 455);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 249, 1, 119, 456);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 215, 3, 104, 457);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 230, 2, 103, 458);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 232, 2, 110, 459);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 219, 1, 106, 460);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 205, 2, 101, 461);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 229, 2, 109, 462);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 210, 3, 124, 463);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 241, 2, 115, 464);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 237, 1, 113, 465);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 234, 1, 111, 466);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 202, 1, 120, 467);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 228, 1, 109, 468);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 235, 2, 112, 469);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 218, 2, 129, 470);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 226, 2, 108, 471);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 223, 2, 107, 472);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 222, 1, 107, 473);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 214, 1, 126, 474);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 245, 3, 117, 475);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 225, 1, 108, 476);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 201, 3, 120, 477);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 220, 2, 106, 478);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 243, 1, 116, 479);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (2018-10-10, 2019-10-10, 206, 3, 101, 480);

INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Lexie Bogisich Jr.', '69638 Florine Neck', 95297254, 201);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Scot Hilpert', '206 Quitzon Manor Apt. 187', 99501410, 202);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Bethel Klocko', '35977 Elisha Row', 90960083, 203);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Prof. Brice McCullough', '6709 Laverna Radial', 95156888, 204);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mr. Al Mante', '28443 Caesar Terrace', 99994565, 205);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Dr. Napoleon Haley', '076 Kon Views', 96433492, 206);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Miss Winnifred Friesen Sr.', '51921 Marquardt Crescent', 98276598, 207);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Dayana Prosacco', '6339 Verla Parkway Apt. 428', 93020083, 208);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Aurelie Kshlerin V', '3508 Huel Island Suite 434', 92216877, 209);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mrs. Betsy Bartell', '1683 Stiedemann Haven Suite 804', 92592334, 210);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Lincoln Rempel', '85249 Daniel Field Suite 372', 95589439, 211);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Alexzander Mueller', '214 Carroll Glens', 98678857, 212);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Sidney Kling', '8574 Ledner Keys Suite 439', 96350428, 213);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mr. Jevon Amore I', '151 Jaskolski Extensions', 93970051, 214);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Ryan Pollich', '2373 Braun Junctions Suite 016', 93093152, 215);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Joan Jerde', '27413 Emmerich Hills Apt. 374', 94848929, 216);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Kyleigh Durgan', '1348 Collier Cliffs Apt. 816', 98151478, 217);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Prof. Alexander Shields', '00181 Verona Crossroad', 97760152, 218);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Ward Hoppe', '7904 Natalie Burgs', 91208064, 219);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Leola Gaylord Sr.', '4833 Lakin Shores Suite 130', 91728443, 220);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mrs. Blanca Friesen', '108 Collins Islands Apt. 625', 96153185, 221);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Freeda Kuphal', '176 Opal Way', 92232368, 222);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Kali Champlin', '135 Abshire Highway', 98845425, 223);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Dr. Gust Kuhn MD', '0818 Albina Brooks Apt. 509', 91268412, 224);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mr. Chelsey Daugherty', '2715 Marvin Curve', 97564412, 225);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Katelyn Gusikowski', '2609 Ruecker Points Apt. 786', 98482075, 226);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Kennith Crona', '30822 Carlee Mount Apt. 089', 92293522, 227);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Izabella Frami', '00478 Collier Rapid Suite 941', 92832565, 228);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Merle Johnson PhD', '927 Geovanny Circles', 96688579, 229);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Zoey Trantow', '065 Kaela Dam', 96895698, 230);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Idell Howe', '588 Juwan Union Apt. 000', 94716024, 231);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Shany Bechtelar II', '69312 Lehner Lodge Apt. 074', 96464774, 232);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mr. Elton Legros', '4899 Casey Via Apt. 035', 96566688, 233);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Laurine Rogahn II', '8722 Hilpert Key', 96933720, 234);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mr. Marcellus Friesen', '86098 Jo Drive Apt. 060', 93018558, 235);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Austen Daniel', '0172 Clemmie Alley', 94577529, 236);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Ally Kihn', '65655 Schumm Burg', 91375052, 237);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Prof. Laurianne Jast', '9088 Ankunding Lodge Apt. 004', 90740082, 238);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Miss Brenda Schroeder IV', '342 Tina Creek', 94592432, 239);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Prof. Olin Fadel MD', '076 Joesph Locks', 96448071, 240);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Ms. Asa Pfeffer', '26313 Vaughn Ridge Apt. 034', 90937520, 241);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Beulah Sawayn', '53098 Wiegand Loop Apt. 310', 90645366, 242);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Laurie Sanford', '939 Alexandro Square', 90720212, 243);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Mr. Rupert Runolfsdottir', '53253 Ashtyn Flats', 98904119, 244);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Kristofer Moore', '4973 Blick Summit Apt. 263', 92096643, 245);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Prof. Joel Effertz', '507 Frankie Street', 92508849, 246);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Emanuel Satterfield DDS', '94076 Bernhard Shoals', 90620555, 247);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Bert Harber', '4999 Corkery Street Apt. 186', 94280192, 248);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Natalia Hermiston', '995 Burley Locks', 90868790, 249);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('Noah Schmitt', '6748 Ardith Mews', 92619389, 250);

INSERT INTO `Author` (`name`) VALUES ('Aiden Senger');
INSERT INTO `Author` (`name`) VALUES ('Camren Pouros Sr.');
INSERT INTO `Author` (`name`) VALUES ('Catharine Goodwin');
INSERT INTO `Author` (`name`) VALUES ('Chelsey Hamill');
INSERT INTO `Author` (`name`) VALUES ('Dr. Gunnar Blanda Sr.');
INSERT INTO `Author` (`name`) VALUES ('Dr. Jaylen Feeney');
INSERT INTO `Author` (`name`) VALUES ('Dr. Letitia Bins');
INSERT INTO `Author` (`name`) VALUES ('Dr. Samson Harber');
INSERT INTO `Author` (`name`) VALUES ('Frankie Kris');
INSERT INTO `Author` (`name`) VALUES ('Jaren Skiles');
INSERT INTO `Author` (`name`) VALUES ('Jeffry Denesik');
INSERT INTO `Author` (`name`) VALUES ('Kitty Towne Jr.');
INSERT INTO `Author` (`name`) VALUES ('Kristofer Bashirian');
INSERT INTO `Author` (`name`) VALUES ('Mr. Kay Padberg Jr.');
INSERT INTO `Author` (`name`) VALUES ('Mrs. Elenora Turner');
INSERT INTO `Author` (`name`) VALUES ('Noe Armstrong');
INSERT INTO `Author` (`name`) VALUES ('Octavia Walsh');
INSERT INTO `Author` (`name`) VALUES ('Prof. Margaretta Maggio IV');
INSERT INTO `Author` (`name`) VALUES ('Trenton Halvorson');
INSERT INTO `Author` (`name`) VALUES ('Wilhelmine Mertz Sr.');

Select * from Author;
Select * from Book;
Select * from Borrower;
Select * from Library;
Select * from LibraryBook;
Select * from LibraryBranch;
Select * from Loan;