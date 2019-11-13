INSERT INTO "Library"(Name, LibraryID)
    VALUES ('NTNU', 1);

INSERT INTO "LibraryBranch"(Name, Address, LibraryBranchID, LibraryID)
    VALUES ('Ålesund', 'Ålesund Kommune', 1, 1),
           ('Gjøvik', 'Gjøvik kommune', 2, 1),
           ('Trondheim', 'Trondheim Kommune', 3, 1);


INSERT INTO "Borrower"(name, address, phone, borrowerid)
    VALUES ('Yusuf', 'Borgundvegen 123', 95864173, 100),
           ('Sander', 'vågavegen 12', 45684136, 101),
           ('Sigurd', 'nørvegate 1', 73586429, 102),
           ('Sverre', 'kongensgate 63', 91857935, 103),
           ('Trym', 'dronningsgate 69', 78755569, 104);

INSERT INTO "Book"(Title, Publisher, Author, BookID, LibraryBranchID)
    VALUES ('Ringenes herre: ringens brorskap 1', 'Allen & Unwin', 'J. R. R. Tolkien', 500, 1),
           ('Ringenes herre: ringens brorskap 2', 'Allen & Unwin', 'J. R. R. Tolkien', 501, 2),
           ('Ringenes herre: to tårn 1', 'Allen & Unwin', 'J. R. R. Tolkien', 502, 2),
           ('Ringenes herre: to tårn 2', 'Allen & Unwin', 'J. R. R. Tolkien',  503, 1),
           ('Ringenes herre: Atter en konge 1', 'Allen & Unwin', 'J. R. R. Tolkien', 504, 3),
           ('Ringenes herre: Atter en konge 2', 'Allen & Unwin', 'J. R. R. Tolkien', 505, 1),
           ('Ringenes herre: Atter en konge 3', 'Allen & Unwin', 'J. R. R. Tolkien', 506, 2),
           ('Hobbiten', 'Tiden Norsk Forlag', 'J. R. R. Tolkien', 507, 3),
           ('Bobby Potter', 'Tine AS' , 'Hans Hansson', 508, 1),
           ('Bobby Potter', 'Tine AS' , 'Hans Hansson', 509, 1),
           ('Bobby Potter', 'Tine AS' , 'Hans Hansson', 510, 2),
           ('Lobby Botter', 'Bine AS' , 'Georg Georgson', 511, 2),
           ('Lobby Botter', 'Bine AS' , 'Georg Georgson', 512, 3),
           ('Lobby Botter', 'Bine AS' , 'Georg Georgson', 513, 3);

