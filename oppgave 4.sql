SELECT Name, Address
FROM Borrower
INNER JOIN Loan L on Borrower.BorrowerID = L.BorrowerID
INNER JOIN Book
WHERE L."Due Date"=2019-11-15
GROUP BY Name, Address
