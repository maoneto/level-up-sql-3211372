-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

INSERT INTO FifthAnniversaryAttendance
VALUES (
(SELECT CustomerID from Customers
  WHERE Email = 'atapley2j@kinetecoinc.com'),
  4
);

SELECT * from FifthAnniversaryAttendance;
