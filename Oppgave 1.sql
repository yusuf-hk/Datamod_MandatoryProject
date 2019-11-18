/*
 Task 4
 */
SELECT Name, sum(copies)
FROM LibraryBook
INNER JOIN Book B on LibraryBook.bookID = B.BookID
INNER JOIN LibraryBranch LB on LibraryBook.LibraryBranchID = LB.LibraryBranchID
WHERE B.Title='User-friendly multi-state function' AND B.Publisher='Mills, Morissette and Waelchi' AND LB.Address = 'Larsgårdsvegen 2'