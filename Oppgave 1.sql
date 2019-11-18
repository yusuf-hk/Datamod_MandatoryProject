/*
 Task 1
 */
SELECT Name as Library_Branch_Name, Address, sum(copies) as sum
FROM LibraryBook
INNER JOIN Book B on LibraryBook.bookID = B.BookID
INNER JOIN LibraryBranch LB on LibraryBook.LibraryBranchID = LB.LibraryBranchID
WHERE B.Title='User-friendly multi-state function' AND B.Publisher='Mills, Morissette and Waelchi' AND Address='Larsgårdsvegen 2'