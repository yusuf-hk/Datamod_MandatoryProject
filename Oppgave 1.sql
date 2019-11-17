SELECT Name, copies
FROM LibraryBook
INNER JOIN Book B on LibraryBook.bookID = B.BookID
INNER JOIN LibraryBranch LB on LibraryBook.LibraryBranchID = LB.LibraryBranchID
WHERE B.Title='Profound non-volatile projection' AND B.Publisher='Krajcik, Rolfson and Quitzon';