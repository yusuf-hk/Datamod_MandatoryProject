/*
 Task 4
 */
SELECT Borrower.Name as Full_Name, Borrower.Address as Borrower_Address, B.Title as Book_Title
FROM Borrower
INNER JOIN Loan L on Borrower.BorrowerID = L.BorrowerID
INNER JOIN Book B on L.bookID = B.BookID
INNER JOIN LibraryBranch LB on L.LibraryBranchID = LB.LibraryBranchID
WHERE L."Due Date"=11-18-2019 AND LB.Name = 'Trondheim'