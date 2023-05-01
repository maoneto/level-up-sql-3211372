-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(Title) AS TotalCopies 
FROM Books
WHERE Title = 'Dracula';

SELECT COUNT(Books.Title) AS CheckedOut 
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' and Loans.ReturnedDate IS NULL

SELECT 
(SELECT COUNT(Title) 
FROM Books
WHERE Title = 'Dracula') -
(SELECT COUNT(Books.Title) AS CheckedOut 
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula' and Loans.ReturnedDate IS NULL)
AS AvailableCopies
