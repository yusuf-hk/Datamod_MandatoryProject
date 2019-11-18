SELECT LibraryBranch.Name AS Branch_Name, count(L.LibraryBranchID) as Books_Loaned_Out
FROM LibraryBranch
INNER JOIN Loan L on LibraryBranch.LibraryBranchID = L.LibraryBranchID
GROUP BY Branch_Name