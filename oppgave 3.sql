SELECT Name
FROM Borrower
INNER JOIN Loan L on Borrower.BorrowerID = L.BorrowerID
INNER JOIN Book B on L.bookID = B.BookID
WHERE B.Title='Profound high-level pricingstructure'