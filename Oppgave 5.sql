SELECT Name, count(L.LibraryBranchID)
FROM LibraryBranch
INNER JOIN Loan L on LibraryBranch.LibraryBranchID = L.LibraryBranchID
WHERE Name='Gjøvik'