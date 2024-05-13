create database hotel_managment_system_db;
use hotel_managment_system_db;
CREATE TABLE Guest (
    GuestID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);
CREATE TABLE Room (
    RoomID INT PRIMARY KEY,
    RoomType VARCHAR(50),
    RoomRate DECIMAL(10, 2),
    MaximumGuests INT
);
CREATE TABLE ReservationDetails (
    ReservationID INT PRIMARY KEY,
    GuestID INT,
    RoomID INT,
    FOREIGN KEY (GuestID) REFERENCES Guest(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);
CREATE TABLE ReservationCost (
    ReservationID INT PRIMARY KEY,
    CheckInDate DATE,
    CheckOutDate DATE,
    TotalCost DECIMAL(10, 2),
    FOREIGN KEY (ReservationID) REFERENCES ReservationDetails(ReservationID)
);
CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    ReservationID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (ReservationID) REFERENCES ReservationDetails(ReservationID)
);
INSERT INTO Guest (FirstName, LastName, Email, PhoneNumber, Address, City, State, PostalCode, Country) VALUES
('Muhammad', 'Ali', 'muhammad.ali@example.com', '03001234567', 'House No. 123, Street No. 45, Model Town', 'Lahore', 'Punjab', '54000', 'Pakistan'),
('Fatima', 'Khan', 'fatima.khan@example.com', '03111234567', 'Apartment No. 456, Block C, Gulshan-e-Iqbal', 'Karachi', 'Sindh', '75300', 'Pakistan'),
('Ahmed', 'Ahmad', 'ahmed.ahmad@example.com', '03221234567', 'Village No. 789, Tehsil No. 12, District No. 34', 'Faisalabad', 'Punjab', '38000', 'Pakistan'),
('Ayesha', 'Hussain', 'ayesha.hussain@example.com', '03331234567', 'Flat No. 101, Building No. 23, Clifton', 'Karachi', 'Sindh', '75600', 'Pakistan'),
('Bilal', 'Ali', 'bilal.ali@example.com', '03441234567', 'House No. 567, Street No. 78, Satellite Town', 'Rawalpindi', 'Punjab', '46000', 'Pakistan'),
('Sana', 'Raza', 'sana.raza@example.com', '03551234567', 'Plot No. 321, Phase No. 4, DHA', 'Lahore', 'Punjab', '54000', 'Pakistan'),
('Ali', 'Hassan', 'ali.hassan@example.com', '03661234567', 'House No. 987, Street No. 90, Saddar', 'Rawalpindi', 'Punjab', '46000', 'Pakistan'),
('Maryam', 'Abbas', 'maryam.abbas@example.com', '03771234567', 'Apartment No. 234, Block B, Nazimabad', 'Karachi', 'Sindh', '74600', 'Pakistan'),
('Usman', 'Khan', 'usman.khan@example.com', '03881234567', 'House No. 654, Street No. 12, Model Town', 'Lahore', 'Punjab', '54000', 'Pakistan'),
('Aisha', 'Zafar', 'aisha.zafar@example.com', '03991234567', 'Apartment No. 876, Block D, Gulistan-e-Jauhar', 'Karachi', 'Sindh', '75200', 'Pakistan');

INSERT INTO Room (RoomID, RoomType, RoomRate, MaximumGuests) VALUES
(101, 'Single', 50.00, 1),
(102, 'Double', 75.00, 2),
(103, 'Suite', 150.00, 4),
(104, 'Single', 50.00, 1),
(105, 'Double', 75.00, 2),
(106, 'Suite', 150.00, 4),
(107, 'Single', 50.00, 1),
(108, 'Double', 75.00, 2),
(109, 'Suite', 150.00, 4),
(110, 'Single', 50.00, 1);

INSERT INTO ReservationDetails (ReservationID, GuestID, RoomID) VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 4, 104),
(5, 5, 105),
(6, 6, 106),
(7, 7, 107),
(8, 8, 108),
(9, 9, 109),
(10, 10, 110);

INSERT INTO ReservationCost (ReservationID, CheckInDate, CheckOutDate, TotalCost) VALUES
(1, '2024-05-15', '2024-05-18', 150.00),
(2, '2024-06-01', '2024-06-04', 225.00),
(3, '2024-06-10', '2024-06-15', 600.00),
(4, '2024-07-01', '2024-07-03', 100.00),
(5, '2024-07-10', '2024-07-12', 150.00),
(6, '2024-08-05', '2024-08-08', 300.00),
(7, '2024-08-15', '2024-08-17', 100.00),
(8, '2024-09-01', '2024-09-04', 225.00),
(9, '2024-09-10', '2024-09-15', 600.00),
(10, '2024-10-01', '2024-10-03', 100.00);

INSERT INTO Payment (PaymentID, ReservationID, PaymentDate, PaymentAmount, PaymentMethod) VALUES
(1, 1, '2024-05-15', 150.00, 'Credit Card'),
(2, 2, '2024-06-01', 225.00, 'PayPal'),
(3, 3, '2024-06-10', 600.00, 'Cash'),
(4, 4, '2024-07-01', 100.00, 'Credit Card'),
(5, 5, '2024-07-10', 150.00, 'Credit Card'),
(6, 6, '2024-08-05', 300.00, 'Cash'),
(7, 7, '2024-08-15', 100.00, 'Credit Card'),
(8, 8, '2024-09-01', 225.00, 'PayPal'),
(9, 9, '2024-09-10', 600.00, 'Cash'),
(10, 10, '2024-10-01', 100.00, 'Credit Card');





