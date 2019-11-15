SELECT sum(copies)
FROM LibraryBook
INNER JOIN LibraryBranch LB on LibraryBook.LibraryBranchID = LB.LibraryBranchID
INNER JOIN Book B on LibraryBook.bookID = B.BookID
WHERE B.Title='Optional needs-based hub'