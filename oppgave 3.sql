SELECT Borrower.Name as Borrowers_Name, Title as Book_Title, LB.Address as Library_Address
FROM Borrower
INNER JOIN Loan L on Borrower.BorrowerID = L.BorrowerID
INNER JOIN Book B on L.bookID = B.BookID
INNER JOIN LibraryBranch LB on L.LibraryBranchID = LB.LibraryBranchID
WHERE B.Title='User-friendly multi-state function'
GROUP BY Borrowers_Name, Book_Title