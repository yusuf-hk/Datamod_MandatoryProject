#
# TABLE STRUCTURE FOR: Author
#

DROP TABLE IF EXISTS `Author`;

CREATE TABLE `Author` (
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Author` (`Name`) VALUES ('Alf');
INSERT INTO `Author` (`Name`) VALUES ('Camren');
INSERT INTO `Author` (`Name`) VALUES ('Cassie');
INSERT INTO `Author` (`Name`) VALUES ('Eino');
INSERT INTO `Author` (`Name`) VALUES ('Filiberto');
INSERT INTO `Author` (`Name`) VALUES ('Freeman');
INSERT INTO `Author` (`Name`) VALUES ('Harmon');
INSERT INTO `Author` (`Name`) VALUES ('Joshua');
INSERT INTO `Author` (`Name`) VALUES ('Karlee');
INSERT INTO `Author` (`Name`) VALUES ('Karley');
INSERT INTO `Author` (`Name`) VALUES ('Kaylah');
INSERT INTO `Author` (`Name`) VALUES ('Kitty');
INSERT INTO `Author` (`Name`) VALUES ('Mayra');
INSERT INTO `Author` (`Name`) VALUES ('Monte');
INSERT INTO `Author` (`Name`) VALUES ('Murphy');
INSERT INTO `Author` (`Name`) VALUES ('Pasquale');
INSERT INTO `Author` (`Name`) VALUES ('Sam');
INSERT INTO `Author` (`Name`) VALUES ('Sanford');
INSERT INTO `Author` (`Name`) VALUES ('Sophie');
INSERT INTO `Author` (`Name`) VALUES ('Viviane');


#
# TABLE STRUCTURE FOR: Book
#

DROP TABLE IF EXISTS `Book`;

CREATE TABLE `Book` (
  `Title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publisher` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BookID` int(11) NOT NULL,
  PRIMARY KEY (`BookID`),
  KEY `Author` (`Author`),
  CONSTRAINT `Book_ibfk_1` FOREIGN KEY (`Author`) REFERENCES `Author` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Seamless object-oriented workforce', 'King, Gusikowski and Walker', 'Alf', 102);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Inverse zeroadministration workforce', 'Swaniawski-Mitchell', 'Alf', 103);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Automated uniform synergy', 'Emard, Mueller and Reilly', 'Karley', 104);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Operative multimedia capability', 'Hodkiewicz, Crona and Ward', 'Karley', 105);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Proactive assymetric focusgroup', 'Ratke, Fisher and Braun', 'Mayra', 106);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Optional needs-based hub', 'Berge Ltd', 'Kitty', 108);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Assimilated client-driven securedline', 'Herzog, VonRueden and Volkman', 'Camren', 112);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Team-oriented didactic instructionset', 'Frami PLC', 'Pasquale', 113);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Optimized 24/7 GraphicalUserInterface', 'Treutel PLC', 'Murphy', 114);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Enhanced incremental internetsolution', 'Upton-Hills', 'Karley', 116);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Profound high-level pricingstructure', 'Legros PLC', 'Sophie', 117);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Polarised needs-based data-warehouse', 'Dooley-Streich', 'Filiberto', 118);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Secured zerodefect structure', 'Marks, Waters and Lynch', 'Sam', 119);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Right-sized didactic methodology', 'Turner-Wiza', 'Monte', 120);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Ameliorated tertiary definition', 'Runte Ltd', 'Pasquale', 122);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Monitored high-level model', 'Kohler-Sipes', 'Viviane', 124);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Re-engineered zerodefect structure', 'Wintheiser-Lynch', 'Kitty', 125);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Customer-focused tertiary neural-net', 'Stehr, Funk and Littel', 'Monte', 126);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Managed attitude-oriented approach', 'Klocko and Sons', 'Karlee', 127);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Versatile responsive workforce', 'Turcotte LLC', 'Cassie', 128);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Profound non-volatile projection', 'Krajcik, Rolfson and Quitzon', 'Eino', 129);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Re-engineered system-worthy access', 'Bauch, Jaskolski and Kshlerin', 'Eino', 130);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('User-centric grid-enabled artificialintelligence', 'Schumm LLC', 'Joshua', 131);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('User-centric didactic frame', 'Gerlach and Sons', 'Harmon', 132);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Cloned directional matrices', 'Becker-Monahan', 'Harmon', 133);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Multi-lateral optimizing toolset', 'Jenkins Group', 'Filiberto', 134);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Distributed 5thgeneration synergy', 'Nienow, Brakus and Witting', 'Camren', 136);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Stand-alone scalable portal', 'Koepp Inc', 'Joshua', 138);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Seamless didactic hardware', 'Grant, Durgan and Shields', 'Filiberto', 139);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('User-friendly coherent structure', 'Lehner and Sons', 'Kaylah', 140);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Devolved object-oriented moderator', 'Hodkiewicz, King and Sawayn', 'Harmon', 141);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Multi-lateral client-server localareanetwork', 'Dare, Hills and Leannon', 'Alf', 142);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Self-enabling intermediate protocol', 'Hudson-VonRueden', 'Freeman', 143);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Organic zeroadministration architecture', 'Donnelly-Murray', 'Freeman', 149);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Pre-emptive maximized moratorium', 'Gleason-Swift', 'Murphy', 150);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Right-sized reciprocal contingency', 'Koss, Sawayn and Waters', 'Sophie', 151);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Multi-lateral stable access', 'Pfeffer-Deckow', 'Karlee', 152);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Intuitive 5thgeneration parallelism', 'Cummerata, Schumm and Kreiger', 'Eino', 154);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Secured responsive adapter', 'Heidenreich, Runte and Bins', 'Sam', 155);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Monitored asynchronous interface', 'Mante, Schinner and Harber', 'Viviane', 156);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Assimilated holistic policy', 'Hand-Braun', 'Cassie', 157);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Robust tertiary neural-net', 'Nienow Group', 'Karlee', 158);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Enterprise-wide actuating instructionset', 'Pagac-Pfeffer', 'Freeman', 159);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Visionary user-facing openarchitecture', 'Thompson Group', 'Mayra', 160);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Up-sized 6thgeneration application', 'Sanford-Watsica', 'Kaylah', 162);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Reduced mobile internetsolution', 'Wehner PLC', 'Sanford', 164);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Innovative web-enabled application', 'Olson, Dibbert and Adams', 'Sanford', 165);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Streamlined web-enabled forecast', 'Torphy and Sons', 'Joshua', 167);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Innovative local standardization', 'Adams-Robel', 'Cassie', 169);
INSERT INTO `Book` (`Title`, `Publisher`, `Author`, `BookID`) VALUES ('Re-contextualized incremental approach', 'Hackett-Maggio', 'Camren', 170);


#
# TABLE STRUCTURE FOR: Borrower
#

DROP TABLE IF EXISTS `Borrower`;

CREATE TABLE `Borrower` (
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `BorrowerID` int(11) NOT NULL,
  PRIMARY KEY (`BorrowerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('non', '229 Ruecker Place', 90187777, 200);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('dolor', '11809 Hallie Wells', 99502542, 202);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('odit', '349 Rice Mission Suite 887', 98490590, 203);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('excepturi', '78698 Clement Mission Suite 394', 97479588, 204);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('ipsum', '62073 Collins Ports Suite 209', 93531790, 205);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('quia', '6260 Steuber Haven', 98040925, 206);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('et', '5442 Goldner Summit Apt. 049', 99194830, 207);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('delectus', '98765 Stefan Mountain', 95233218, 208);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('ipsa', '88316 Cummings Valleys', 94918235, 209);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('odit', '8807 Magnolia Villages', 90660168, 210);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('qui', '6757 Ullrich Well Suite 738', 98908612, 211);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('nobis', '51411 Stefanie Meadows', 99635839, 212);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('inventore', '6602 Weber Passage Suite 477', 97457621, 213);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('error', '3356 Domingo Streets Suite 190', 92226472, 214);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('et', '826 Spencer Roads', 92670850, 215);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('sed', '7172 Rasheed Parkway Apt. 383', 94402564, 216);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('eligendi', '03369 Eduardo Mount', 90844399, 217);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('perspiciatis', '4745 Chet Plains Suite 744', 91448648, 218);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('ea', '8621 Elinor Mountains', 94863988, 219);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('sit', '432 Raegan Locks Apt. 609', 98261607, 220);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('voluptatibus', '9611 Hudson Estates', 91409171, 221);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('nisi', '0799 Jimmie Street Suite 418', 96718758, 222);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('repudiandae', '07308 Hauck Ridge', 95525788, 223);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('unde', '236 Davonte Neck', 99649273, 224);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('sunt', '154 Metz Lodge', 91765345, 225);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('accusamus', '48531 Mabel Fort', 90169486, 226);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('et', '363 Grady Meadows', 94199960, 227);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('dolorem', '330 Lukas Drive Suite 708', 91949927, 228);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('earum', '40912 Quigley Green Suite 693', 93883898, 229);
INSERT INTO `Borrower` (`Name`, `address`, `phone`, `BorrowerID`) VALUES ('pariatur', '888 Ankunding Pines', 93840852, 230);


#
# TABLE STRUCTURE FOR: Library
#

DROP TABLE IF EXISTS `Library`;

CREATE TABLE `Library` (
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LibraryID` int(11) NOT NULL,
  PRIMARY KEY (`LibraryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Library` (`Name`, `LibraryID`) VALUES ('quam', 1);


#
# TABLE STRUCTURE FOR: LibraryBook
#

DROP TABLE IF EXISTS `LibraryBook`;

CREATE TABLE `LibraryBook` (
  `bookID` int(11) DEFAULT NULL,
  `LibraryBranchID` int(11) DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `LibraryBookID` int(11) NOT NULL,
  PRIMARY KEY (`LibraryBookID`),
  KEY `bookID` (`bookID`),
  KEY `LibraryBranchID` (`LibraryBranchID`),
  CONSTRAINT `LibraryBook_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `Book` (`BookID`),
  CONSTRAINT `LibraryBook_ibfk_2` FOREIGN KEY (`LibraryBranchID`) REFERENCES `LibraryBranch` (`LibraryBranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (134, 2, 2, 300);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (118, 3, 1, 301);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (112, 1, 7, 302);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (117, 2, 5, 303);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (131, 2, 7, 304);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (138, 1, 1, 305);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (122, 3, 1, 306);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (127, 1, 1, 307);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (128, 2, 3, 308);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (103, 2, 4, 309);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (104, 3, 3, 310);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (113, 2, 7, 311);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (126, 3, 3, 312);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (130, 1, 6, 313);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (120, 2, 9, 314);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (102, 1, 4, 315);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (114, 3, 2, 316);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (136, 3, 3, 317);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (132, 3, 9, 318);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (105, 1, 5, 319);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (129, 3, 2, 320);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (140, 3, 8, 321);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (116, 1, 1, 322);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (119, 1, 7, 323);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (124, 1, 7, 324);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (125, 2, 7, 325);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (106, 2, 1, 326);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (108, 3, 3, 327);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (133, 1, 4, 329);
INSERT INTO `LibraryBook` (`bookID`, `LibraryBranchID`, `copies`, `LibraryBookID`) VALUES (139, 2, 2, 330);


#
# TABLE STRUCTURE FOR: LibraryBranch
#

DROP TABLE IF EXISTS `LibraryBranch`;

CREATE TABLE `LibraryBranch` (
  `Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LibraryBranchID` int(11) NOT NULL,
  `LibraryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LibraryBranchID`),
  KEY `LibraryID` (`LibraryID`),
  CONSTRAINT `LibraryBranch_ibfk_1` FOREIGN KEY (`LibraryID`) REFERENCES `Library` (`LibraryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `LibraryBranch` (`Name`, `Address`, `LibraryBranchID`, `LibraryID`) VALUES ('incidunt', 'Ledaside', 1, 1);
INSERT INTO `LibraryBranch` (`Name`, `Address`, `LibraryBranchID`, `LibraryID`) VALUES ('rerum', 'Colemanland', 2, 1);
INSERT INTO `LibraryBranch` (`Name`, `Address`, `LibraryBranchID`, `LibraryID`) VALUES ('aut', 'Effertzfort', 3, 1);


#
# TABLE STRUCTURE FOR: Loan
#

DROP TABLE IF EXISTS `Loan`;

CREATE TABLE `Loan` (
  `Lending Date` datetime DEFAULT NULL,
  `Due Date` datetime DEFAULT NULL,
  `BorrowerID` int(11) DEFAULT NULL,
  `LibraryBranchID` int(11) DEFAULT NULL,
  `bookID` int(11) DEFAULT NULL,
  `LoanID` int(11) NOT NULL,
  PRIMARY KEY (`LoanID`),
  KEY `BorrowerID` (`BorrowerID`),
  KEY `LibraryBranchID` (`LibraryBranchID`),
  KEY `bookID` (`bookID`),
  CONSTRAINT `Loan_ibfk_1` FOREIGN KEY (`BorrowerID`) REFERENCES `Borrower` (`BorrowerID`),
  CONSTRAINT `Loan_ibfk_2` FOREIGN KEY (`LibraryBranchID`) REFERENCES `LibraryBranch` (`LibraryBranchID`),
  CONSTRAINT `Loan_ibfk_3` FOREIGN KEY (`bookID`) REFERENCES `LibraryBook` (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 207, 1, 112, 400);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 211, 2, 117, 401);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 213, 1, 119, 402);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 214, 2, 120, 403);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 204, 1, 105, 404);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 203, 3, 104, 405);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 205, 2, 106, 406);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 212, 3, 118, 407);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 215, 3, 122, 408);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 200, 1, 102, 409);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 210, 1, 116, 410);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 209, 3, 114, 411);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 208, 2, 113, 412);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 202, 2, 103, 413);
INSERT INTO `Loan` (`Lending Date`, `Due Date`, `BorrowerID`, `LibraryBranchID`, `bookID`, `LoanID`) VALUES (NULL, NULL, 206, 3, 108, 415);


