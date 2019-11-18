/*
 Task 2
 */

SELECT Name as Library_Name, sum(copies) as quantity
FROM LibraryBook
INNER JOIN LibraryBranch LB on LibraryBook.LibraryBranchID = LB.LibraryBranchID
INNER JOIN Book B on LibraryBook.bookID = B.BookID
WHERE B.Title='User-friendly multi-state function'
GROUP BY Library_Name