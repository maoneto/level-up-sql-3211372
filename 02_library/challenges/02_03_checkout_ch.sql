-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

SELECT PatronID FROM Patrons
WHERE Patrons.FirstName = 'Jack' and Patrons.LastName = 'Vaan';
-- PatronID = 50

SELECT BookID FROM Books
WHERE Books.Title = 'The Picture of Dorian Gray' AND 
  Books.Barcode = 2855934983;
-- BookID = 11

SELECT BookID FROM Books
WHERE Books.Title = 'Great Expectations' AND 
  Books.Barcode = 4043822646;
-- BookID = 93

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES
((SELECT BookID FROM Books
WHERE Books.Title = 'The Picture of Dorian Gray' AND 
  Books.Barcode = 2855934983), 
  (SELECT PatronID FROM Patrons
WHERE Patrons.FirstName = 'Jack' and Patrons.LastName = 'Vaan'),
'2022-08-25', '2022-09-08'),
((SELECT BookID FROM Books
WHERE Books.Title = 'Great Expectations' AND 
  Books.Barcode = 4043822646),
  (SELECT PatronID FROM Patrons
WHERE Patrons.FirstName = 'Jack' and Patrons.LastName = 'Vaan'),
'2022-08-25', '2022-09-08');

SELECT * FROM Loans
ORDER BY LoanID DESC
LIMIT 5;