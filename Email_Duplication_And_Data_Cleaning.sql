CREATE TABLE Emails (
    id INTEGER PRIMARY KEY,
    NAME VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);
INSERT INTO Emails (id, NAME, email, phone) VALUES
(1, 'Rahul', 'rahul@exmple.com', '9839473902'),
(2, 'Rohit', 'rohit@example.com', '9883782971'),
(3, 'Suresh', 'rahul@exmple.com', '7654321098'),
(4, 'Manish', 'manish@example.com', '8927394619'),
(5, 'Amit', 'amit@example.com', '9399303840'),
(6, 'Rahul', 'rahul@exmple.com', '9737466147');
WITH RankedEmails AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS rn
    FROM Emails
)
DELETE FROM Emails
WHERE id IN (
    SELECT id FROM RankedEmails WHERE rn > 1
);
SELECT * FROM Emails ORDER BY id;
