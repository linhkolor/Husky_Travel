CREATE DATABASE IF NOT EXISTS husky_travel_booking_system;

USE husky_travel_booking_system;

CREATE TABLE `User` (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Payment_Info TEXT
);

CREATE TABLE Hotel (
    Hotel_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Available_Rooms INT NOT NULL,
    Price_Per_Night DECIMAL(10, 2) NOT NULL
);

CREATE TABLE User_Hotel (
    User_Hotel_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Hotel_ID INT NOT NULL,
    Num_Of_Rooms INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES `User`(User_ID),
    FOREIGN KEY (Hotel_ID) REFERENCES Hotel(Hotel_ID)
);

CREATE TABLE CarRental (
    Car_ID INT PRIMARY KEY AUTO_INCREMENT,
    Car_Type VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Available_Cars INT NOT NULL,
    Price_Per_Day DECIMAL(10, 2) NOT NULL
);

CREATE TABLE User_CarRental (
    User_CarRental_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Car_ID INT NOT NULL,
    Num_Of_Cars INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES `User`(User_ID),
    FOREIGN KEY (Car_ID) REFERENCES CarRental(Car_ID)
);

CREATE TABLE Flight (
    Flight_ID INT PRIMARY KEY AUTO_INCREMENT,
    Airline VARCHAR(255) NOT NULL,
    Departure_City VARCHAR(255) NOT NULL,
    Arrival_City VARCHAR(255) NOT NULL,
    Departure_Date VARCHAR(50) NOT NULL,
    Arrival_Date VARCHAR(50) NOT NULL,
    Available_Seats INT NOT NULL,
    Price_Per_Seat DECIMAL(10, 2) NOT NULL,
    Num_Of_Packages INT,
    Price_Per_Package DECIMAL(10, 2)
);

CREATE TABLE User_Flight (
    User_Flight_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Flight_ID INT NOT NULL,
    Num_Of_Seats INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES `User`(User_ID),
    FOREIGN KEY (Flight_ID) REFERENCES Flight(Flight_ID)
);

CREATE TABLE Booking (
    Booking_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Booking_Date VARCHAR(50) NOT NULL,
    Total_Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES `User`(User_ID)
);

INSERT INTO `User` (Name, Email, Password, Payment_Info) VALUES 
('Joshua Sanchez', 'joshua27@yahoo.com', 'X5lRZ6cn)D', 'Visa 5926'),
('Logan Rangel', 'tdelgado@briggs.com', '_0yIkeeguH', 'Visa 3430'),
('Patricia Harris', 'julie59@vazquez.net', '&QI@N*Hm^8', 'Visa 3086'),
('Adam Armstrong', 'walkerwendy@hotmail.com', '!GHlm(*_7$', 'Mastercard 5172'),
('Richard Martin', 'hernandezjoshua@hotmail.com', '1^2s*R21xz', 'Mastercard 0013'),
('Kenneth Norris', 'bmurray@yahoo.com', '8V+GZ^yg+@', 'Visa 6011'),
('Catherine Wiggins', 'gblankenship@gmail.com', '0z661Ex!t_', 'Visa 3341'),
('Samantha Burns', 'katherinejones@flores.com', 'g68MTLc)#u', 'Mastercard 2479'),
('Lisa Sosa', 'thomasjoel@smith.biz', '*UQ*EjeS57', 'Visa 8037'),
('Michael Hayes', 'harry96@yahoo.com', '!@CeS2Krxc', 'Mastercard 0414'),
('Leslie Ibarra', 'jacobwiggins@mahoney.com', '+VK&0FljNb', 'Visa 6785'),
('Brenda Simmons', 'xsnow@yahoo.com', 'p5LqhNcd_7', 'Mastercard 9348'),
('Ashley Briggs', 'vickijohnson@zimmerman.com', 'y)*SDIXb(3', 'Mastercard 6249'),
('Matthew Taylor', 'patrick84@hotmail.com', '8m0GqA%o&*', 'Visa 9614'),
('Jeffrey Cameron', 'tskinner@yahoo.com', 'U77OdOjv+*', 'Visa 7010'),
('Robert Walker', 'normasmith@hotmail.com', 'kg2cjIck$@', 'Visa 2774'),
('Timothy Carr', 'teresa42@martin.com', 'Yf+(2YfkTc', 'Mastercard 5900'),
('David Thompson', 'zmarshall@yahoo.com', '^VFnzcJk5A', 'Visa 2441'),
('Tonya Mueller', 'shepherdkatherine@wall-blankenship.net', '_^A6Bdq+TM', 'Visa 0637'),
('Casey Briggs', 'ryan09@clements.net', '3yc9rONr+&', 'Mastercard 5458'),
('Melissa Ward', 'bauerjason@gmail.com', '*H@4B$h#vr', 'Visa 7827'),
('Dennis Villa', 'samantharubio@gmail.com', 'J#$6GgG9fS', 'Mastercard 5667'),
('Nicole Turner', 'breanna70@peters-pearson.com', '!8Zn1Qg2#2', 'Mastercard 4302'),
('Ryan Diaz', 'carolyn82@hill.com', 'e79ZSokn#)', 'Visa 5155'),
('Erika Oliver', 'dbush@hotmail.com', '&2SYzLN4nG', 'Visa 6960'),
('Alexander Ibarra', 'uwilliams@gmail.com', 'H+z20IY@*q', 'Visa 4205'),
('Audrey Mitchell MD', 'angelaroberts@yahoo.com', 'F0WTsVJx&n', 'Visa 1198'),
('Bryan Juarez', 'stephanie51@yahoo.com', '5^2tR!Cxth', 'Mastercard 9056'),
('Michael Salazar', 'cameronrangel@hotmail.com', 'W$*GT)rm@3', 'Mastercard 3263'),
('Crystal Campbell', 'tbright@gmail.com', 'Q2*GMLeZ&z', 'Mastercard 4022'),
('Charles Carrillo', 'dickersonjessica@gmail.com', 'JE1FLW9m6*', 'Mastercard 9475'),
('Mikayla Lara', 'vanessamitchell@aguilar-welch.com', '3kwgVLyx)K', 'Mastercard 4608'),
('Jacqueline Edwards', 'gregory71@molina.com', '2^DnA&Mg^2', 'Mastercard 0223'),
('Sydney Johnson', 'ryan86@chan.com', 'x@*N5XhdI^', 'Mastercard 0834'),
('Kyle Navarro', 'michael41@yahoo.com', ')I(l5KepN+', 'Visa 7867'),
('Sandra Hamilton', 'kstewart@luna.com', '(67KD5envL', 'Visa 7535'),
('Michelle Hernandez', 'lisacruz@huerta-martinez.org', '2!zdGCQf^A', 'Visa 8267'),
('Natalie James', 'bobbyhoffman@peterson.com', 'Xg4IvmmAG!', 'Mastercard 8231'),
('Nancy Joseph', 'jessica66@wilson.com', '&$k(O7khb7', 'Mastercard 4075'),
('Erica Roberts', 'matthewcastillo@castillo.net', 'wwO6E$5n#z', 'Mastercard 2423'),
('Michael Davis', 'ladams@yahoo.com', 'f)Z^1WRsO8', 'Mastercard 0183'),
('William Meyers', 'woodbrandon@flynn.biz', '83A+J5El+Z', 'Visa 9008'),
('Christopher Moses', 'robert07@yahoo.com', '*PI0Itam8m', 'Mastercard 0722'),
('Brandon Anderson', 'jlawrence@fuller.com', 'u1JNCsRx&A', 'Mastercard 4601'),
('Alison Flores', 'parkeranna@yahoo.com', '+IYz%U7o4X', 'Visa 1832'),
('Erin Richmond', 'iwood@hotmail.com', 'uz2i9DdI+5', 'Visa 1841'),
('Lauren Hardin', 'patrick79@hotmail.com', '$Rd0Hk$Ej1', 'Mastercard 9838'),
('James Quinn', 'mcintoshkatelyn@johnson.com', '^5NZgned!S', 'Visa 3728'),
('Joshua Grimes', 'rparker@davis.biz', 'O3b+4Oik3A', 'Visa 6396'),
('Laura Scott', 'donnamorton@martin.net', '_(#_Kx5a64', 'Mastercard 3763');

INSERT INTO Flight (Flight_ID, Airline, Departure_City, Arrival_City, Departure_Date, Arrival_Date, Available_Seats, Price_Per_Seat, Num_Of_Packages, Price_Per_Package)
VALUES 
(67170, 'Inc', 'Lake Trevor', 'New Amanda', '2023-01-21', '2023-12-24', 121, 321.87, 1, 51.53),
(76589, 'Ltd', 'Collinsside', 'West Donald', '2023-09-12', '2023-11-14', 61, 164.26, 6, 91.33),
(87309, 'LLC', 'Elizabethmouth', 'New Kevin', '2023-05-01', '2023-12-14', 99, 86.05, 4, 22.72),
(64986, 'Ltd', 'Sweeneyberg', 'East Patricia', '2023-07-10', '2023-06-29', 106, 431.15, 0, 76.85),
(88385, 'and Sons', 'South Justintown', 'Lake Phillip', '2023-08-10', '2023-11-18', 74, 493.13, 0, 41.53),
(65634, 'PLC', 'Port Dorothyhaven', 'West Sylviachester', '2023-02-03', '2023-08-30', 192, 395.06, 10, 74.63),
(86833, 'and Sons', 'West Justinmouth', 'Jacksonville', '2023-10-04', '2023-01-14', 87, 97.12, 2, 76.78),
(92688, 'and Sons', 'Grayfort', 'Lake Charlesborough', '2023-02-03', '2023-06-20', 101, 391.59, 8, 37.88),
(28249, 'Ltd', 'East Austin', 'North Dwaynestad', '2023-11-17', '2023-03-31', 96, 129.92, 8, 99.58),
(99073, 'LLC', 'Youngfort', 'East Thomasfort', '2023-04-24', '2023-09-14', 182, 215.62, 6, 65.9);

INSERT INTO CarRental (Car_ID, Car_Type, Location, Available_Cars, Price_Per_Day) VALUES 
(75429, 'gyQsW', 'Port Jennashire', 42, 26.75),
(33808, 'VelNK', 'West Joannastad', 40, 143.72),
(28104, 'CiBrS', 'Charlesmouth', 50, 149.18),
(36378, 'yukKb', 'Johnsonbury', 38, 28.19),
(70629, 'segeB', 'North Dillon', 37, 117.32),
(91755, 'wpSjG', 'Tonyafort', 7, 35.27),
(62903, 'wflTO', 'Leebury', 21, 27.52),
(17295, 'tthMk', 'East David', 22, 32.02),
(53153, 'BOwii', 'New Kimberlyburgh', 47, 24.69),
(68125, 'WwNLP', 'Ramirezmouth', 5, 50.36),
(68949, 'TiXZX', 'North Laurenville', 23, 44.51),
(54557, 'xyVeN', 'New Charleshaven', 3, 62.81),
(14462, 'JbVuJ', 'Paulastad', 12, 119.07),
(33562, 'uAdro', 'West Megan', 50, 74.7),
(86910, 'hHtjO', 'Williamsonland', 32, 145.65),
(47345, 'elQQo', 'East Whitneyfurt', 16, 89.29),
(68809, 'Mduol', 'Bellville', 33, 39.2),
(79790, 'LqTyx', 'South Jose', 41, 103.88),
(51537, 'nFOOs', 'Johnville', 24, 45.97),
(23696, 'DTVEJ', 'Elizabethborough', 39, 115.06),
(24778, 'suQBO', 'Thomasstad', 34, 97.17),
(18653, 'srXln', 'Christineton', 12, 130.73),
(15463, 'ZkAIs', 'Lake Bryan', 13, 81.49),
(23181, 'mZNtb', 'Michelleshire', 46, 144.65),
(12743, 'oZYWi', 'Hayesburgh', 12, 117.36),
(59001, 'RffFC', 'South Scott', 15, 55.04),
(58562, 'ZdTnR', 'Torreschester', 14, 31.48),
(61813, 'hgmft', 'West Reneebury', 49, 62.03),
(37477, 'vHQwB', 'Arnoldbury', 1, 53.7),
(86850, 'MAgaW', 'Jaredshire', 20, 57.01),
(49292, 'jqipM', 'East Lukeshire', 23, 24.22),
(53324, 'dGBMV', 'Debraport', 46, 63.87),
(30529, 'cxAre', 'Jenniferchester', 36, 130.96),
(74094, 'SDjkc', 'Lake Randychester', 11, 107.58),
(58140, 'dhUxF', 'North Laurachester', 1, 103.7),
(24389, 'vOnOv', 'Robertburgh', 43, 65.36),
(93564, 'NGDvR', 'North David', 42, 141.73),
(30852, 'nzruL', 'New Moniqueshire', 50, 79.68),
(27994, 'VwjUb', 'East Christianmouth', 3, 28.25),
(77279, 'Szdgl', 'New Melissaport', 39, 49.77),
(82785, 'QThCo', 'Julieville', 8, 89.69),
(33768, 'UGmRb', 'Haynesburgh', 15, 148.4),
(95713, 'QbHIk', 'Rhodesshire', 9, 77.99),
(88386, 'aWetP', 'North Fernando', 29, 115.52),
(15317, 'MxMbZ', 'West Ronald', 1, 67.0),
(95570, 'oolso', 'Burnsside', 26, 124.7),
(45376, 'AjmPv', 'Lake Rose', 36, 20.66),
(58807, 'UdOxa', 'Stacychester', 3, 51.5),
(77486, 'RREIB', 'Lake Bob', 38, 107.16),
(38823, 'BkEls', 'Port David', 22, 125.99);

INSERT INTO Hotel (Hotel_ID, Name, Location, Available_Rooms, Price_Per_Night) VALUES 
(41258, 'Levine Group', 'Port Heather', 111, 183.9),
(72355, 'Zimmerman, Perry and Phillips', 'Port Nancy', 72, 291.63),
(88849, 'Black LLC', 'Lake Jeremiah', 136, 335.77),
(28365, 'Rivas and Sons', 'Acostachester', 482, 393.25),
(69688, 'Carroll, Adams and Fleming', 'Port Darren', 17, 412.51),
(38382, 'Hinton-Robertson', 'West Brandonmouth', 144, 140.16),
(34707, 'Williams, Berry and Hendrix', 'Jacobview', 409, 263.47),
(46701, 'Austin Ltd', 'New Maureenberg', 353, 498.24),
(55665, 'Hickman and Sons', 'East Lauraport', 114, 325.67),
(85201, 'Becker Group', 'Lake Jared', 51, 162.13),
(49198, 'Anderson Group', 'Boonetown', 330, 344.39),
(43768, 'Sanders-Frank', 'South Sheila', 332, 127.1),
(98950, 'Jones PLC', 'North Kenneth', 30, 106.37),
(17697, 'Mendoza, Craig and Bailey', 'South Jennifermouth', 439, 315.46),
(14809, 'Bradshaw, Berry and Moore', 'North Josephbury', 358, 274.79),
(72087, 'Sharp, Jones and Scott', 'Sheritown', 86, 440.55),
(85069, 'Zavala, Lewis and Rios', 'Jeffreybury', 464, 426.7),
(37918, 'Cook-Gonzales', 'Robertschester', 247, 412.06),
(71070, 'Gonzales-Kennedy', 'Rebeccaborough', 247, 404.35),
(79008, 'Chen, Murphy and Blankenship', 'Lake Felicia', 413, 227.09),
(76647, 'Phillips, Roy and Huff', 'Greentown', 431, 228.96),
(21575, 'Owens-Huynh', 'Lake Kennethborough', 281, 253.17),
(14404, 'Perry-Rivera', 'Lake Katiehaven', 433, 348.63),
(69225, 'Bell, Mendoza and Woods', 'New Felicia', 72, 425.13),
(88950, 'Lopez, Schneider and Coffey', 'New Carriemouth', 450, 268.78),
(37788, 'George, Johnson and Carr', 'South Michelleport', 10, 238.94),
(55885, 'Smith, Collins and Maldonado', 'West Kellie', 486, 378.78),
(64472, 'Carney LLC', 'Allenville', 199, 445.54),
(14763, 'Edwards, Murray and Martinez', 'New Joseph', 389, 341.54),
(92240, 'Randall, Thompson and Thomas', 'East Lisatown', 425, 72.34),
(69868, 'Harrison-Kennedy', 'Berryborough', 235, 456.77),
(78064, 'Johnson Inc', 'Cruzberg', 310, 328.12),
(71111, 'Mccoy PLC', 'Malloryland', 107, 151.11),
(81278, 'Clark LLC', 'West Deanmouth', 138, 302.44),
(46649, 'Vasquez PLC', 'Lake Lindsey', 496, 484.66),
(73554, 'Case, Pham and Hart', 'Rowebury', 29, 286.48),
(72071, 'Rice Ltd', 'Cruzview', 132, 225.14),
(94337, 'Chavez-Jones', 'East Valerie', 100, 179.74),
(79994, 'Lopez, Short and Moreno', 'Marybury', 297, 487.43),
(81236, 'Lee LLC', 'Rickyberg', 3, 421.69),
(97717, 'Fleming, Riley and Gibson', 'North Nicole', 340, 492.06),
(84111, 'Gray-Murillo', 'Ellisonbury', 397, 251.75),
(78103, 'Jones, Hensley and Suarez', 'East Sheri', 127, 456.97),
(90565, 'Bailey, Ruiz and Parks', 'South Henry', 300, 162.1),
(12695, 'Li Ltd', 'New Bradley', 378, 247.36),
(65165, 'Campbell, Robinson and Barajas', 'Port Alex', 392, 124.6),
(52558, 'Edwards LLC', 'Edwinbury', 214, 321.15),
(13247, 'Lee and Sons', 'Lawsonstad', 316, 446.73),
(80752, 'Moreno-Montgomery', 'Port Bridget', 259, 320.23),
(42787, 'Graham Inc', 'Morrowmouth', 90, 93.94);

INSERT INTO User_Hotel (User_ID, Hotel_ID, Num_Of_Rooms) VALUES 
(1, 41258, 2),
(2, 72355, 3),
(3, 88849, 1),
(4, 28365, 4),
(5, 69688, 2),
(6, 38382, 1),
(7, 34707, 3),
(8, 46701, 2),
(9, 55665, 1),
(10, 85201, 2);

INSERT INTO User_Flight (User_ID, Flight_ID, Num_Of_Seats) VALUES 
(1, 67170, 2),
(2, 76589, 3),
(3, 87309, 1),
(4, 64986, 4);

INSERT INTO User_CarRental (User_ID, Car_ID, Num_Of_Cars) VALUES
(7, 75429, 2),
(8, 91755, 1),
(9, 30529, 3),
(10, 61813, 2),
(11, 15317, 1);

INSERT INTO Booking (User_ID, Booking_Date, Total_Price) VALUES
(1, '2023-12-01', 250.50),
(2, '2023-11-15', 180.75),
(3, '2023-10-20', 320.00),
(4, '2023-09-05', 150.25),
(5, '2023-08-10', 420.80);

--- Queries 

---- Retrieve all users

Select * From User;
Select * From Hotel;

--- Retrieve all user bookings with hotel details:

SELECT Booking.Booking_ID, Booking.User_ID, Booking.Booking_Date, Booking.Total_Price,
       User.Name AS User_Name, User.Email AS User_Email,
       Hotel.Name AS Hotel_Name, Hotel.Location AS Hotel_Location
FROM Booking
JOIN User ON Booking.User_ID = User.User_ID
JOIN User_Hotel ON Booking.User_ID = User_Hotel.User_ID
JOIN Hotel ON User_Hotel.Hotel_ID = Hotel.Hotel_ID;

--- Retrieve all car Rentals
SELECT * FROM CarRental;

--- Retrieve all flights:
SELECT * FROM Flight;

--- Retrieve all user bookings with flight details:
SELECT Booking.Booking_ID, Booking.User_ID, Booking.Booking_Date, Booking.Total_Price,
       User.Name AS User_Name, User.Email AS User_Email,
       Flight.Airline AS Flight_Airline, Flight.Departure_City, Flight.Arrival_City,
       Flight.Departure_Date, Flight.Arrival_Date
FROM Booking
JOIN User ON Booking.User_ID = User.User_ID
JOIN User_Flight ON Booking.User_ID = User_Flight.User_ID
JOIN Flight ON User_Flight.Flight_ID = Flight.Flight_ID;

--- Retrieve all bookings with total price greater than a specific amount:
SELECT * FROM Booking WHERE Total_Price > 100.00;

--- Retrieve users who have made a booking:
SELECT DISTINCT User.User_ID, User.Name, User.Email
FROM User
JOIN Booking ON User.User_ID = Booking.User_ID;

--- Retrieve hotels with available rooms greater than 10:
SELECT * FROM Hotel WHERE Available_Rooms > 10;

--- Retrieve users who have booked a car and a hotel:
SELECT DISTINCT User.User_ID, User.Name, User.Email
FROM User
JOIN User_Hotel ON User.User_ID = User_Hotel.User_ID
JOIN User_CarRental ON User.User_ID = User_CarRental.User_ID;


--- Retrieve users who have booked a flight with more than 3 seats:
SELECT DISTINCT User.User_ID, User.Name, User.Email
FROM User
JOIN User_Flight ON User.User_ID = User_Flight.User_ID
WHERE User_Flight.Num_Of_Seats > 3;

--- Retrieve bookings made after a specific date:
SELECT * FROM Booking WHERE STR_TO_DATE(Booking_Date, '%Y-%m-%d') > '2023-01-01';

--- Retrieve users and their bookings, ordered by booking date in descending order:
SELECT User.User_ID, User.Name, User.Email, Booking.Booking_ID, Booking.Booking_Date
FROM User
JOIN Booking ON User.User_ID = Booking.User_ID
ORDER BY Booking.Booking_Date DESC;

--- Retrieve car rentals with prices per day greater than $50, ordered by price in ascending order:
SELECT * FROM CarRental WHERE Price_Per_Day > 50.00 ORDER BY Price_Per_Day ASC;

--- Retrieve users who have booked a flight to a city starting with 'New':
SELECT DISTINCT User.User_ID, User.Name, User.Email
FROM User
JOIN User_Flight ON User.User_ID = User_Flight.User_ID
JOIN Flight ON User_Flight.Flight_ID = Flight.Flight_ID
WHERE Flight.Arrival_City LIKE 'New%';

--- Retrieve flights with available seats less than 100, ordered by available seats in ascending order:
SELECT * FROM Flight WHERE Available_Seats < 100 ORDER BY Available_Seats ASC;

--- Retrieve users who have booked a hotel or a car rental, ordered by user name:
SELECT DISTINCT User.User_ID, User.Name, User.Email
FROM User
LEFT JOIN User_Hotel ON User.User_ID = User_Hotel.User_ID
LEFT JOIN User_CarRental ON User.User_ID = User_CarRental.User_ID
WHERE User_Hotel.User_Hotel_ID IS NOT NULL OR User_CarRental.User_CarRental_ID IS NOT NULL
ORDER BY User.Name;

---- Aggregate Functions

--- Calculate the total number of available rooms in all hotels:
SELECT SUM(Available_Rooms) AS TotalAvailableRooms FROM Hotel;

--- Calculate the average price per night for all hotels:
SELECT AVG(Price_Per_Night) AS AveragePricePerNight FROM Hotel;

--- Count the number of bookings made by each user:
SELECT User.User_ID, User.Name, COUNT(Booking.Booking_ID) AS NumberOfBookings
FROM User
LEFT JOIN Booking ON User.User_ID = Booking.User_ID
GROUP BY User.User_ID;

--- Find the highest price per day for car rentals:
SELECT MAX(Price_Per_Day) AS HighestPricePerDay FROM CarRental;

--- Calculate the total number of seats available in all flights:
SELECT SUM(Available_Seats) AS TotalAvailableSeats FROM Flight;

--- Calculate the average number of rooms booked per user in hotels:
SELECT User.User_ID, User.Name, AVG(User_Hotel.Num_Of_Rooms) AS AvgRoomsBooked
FROM User
JOIN User_Hotel ON User.User_ID = User_Hotel.User_ID
GROUP BY User.User_ID;

--- Calculate the total price of all bookings made by a specific user:
SELECT User.User_ID, User.Name, SUM(Booking.Total_Price) AS TotalSpent
FROM User
JOIN Booking ON User.User_ID = Booking.User_ID
GROUP BY User.User_ID;

---- Join Queries

--- Retrieve users along with their booked hotels (including those with no bookings):
SELECT User.User_ID, User.Name, User.Email, Hotel.Name AS Hotel_Name
FROM User
LEFT JOIN User_Hotel ON User.User_ID = User_Hotel.User_ID
LEFT JOIN Hotel ON User_Hotel.Hotel_ID = Hotel.Hotel_ID;

---- Retrieve users who have booked both a hotel and a car rental:
SELECT DISTINCT User.User_ID, User.Name, User.Email
FROM User
JOIN User_Hotel ON User.User_ID = User_Hotel.User_ID
JOIN User_CarRental ON User.User_ID = User_CarRental.User_ID;

---- Retrieve users who have booked a flight along with flight details (inner join):
SELECT User.User_ID, User.Name, User.Email, Flight.Flight_ID, Flight.Airline, Flight.Departure_City, Flight.Arrival_City
FROM User
JOIN User_Flight ON User.User_ID = User_Flight.User_ID
JOIN Flight ON User_Flight.Flight_ID = Flight.Flight_ID;

---- Retrieve hotels and their bookings along with user details (inner join):
SELECT Hotel.Hotel_ID, Hotel.Name AS Hotel_Name, Hotel.Location, Booking.Booking_ID, Booking.Booking_Date, User.Name AS User_Name
FROM Hotel
JOIN User_Hotel ON Hotel.Hotel_ID = User_Hotel.Hotel_ID
JOIN Booking ON User_Hotel.User_ID = Booking.User_ID
JOIN User ON Booking.User_ID = User.User_ID;

---- Retrieve hotels and their bookings along with user details (inner join):
SELECT Hotel.Hotel_ID, Hotel.Name AS Hotel_Name, Hotel.Location, Booking.Booking_ID, Booking.Booking_Date, User.Name AS User_Name
FROM Hotel
JOIN User_Hotel ON Hotel.Hotel_ID = User_Hotel.Hotel_ID
JOIN Booking ON User_Hotel.User_ID = Booking.User_ID
JOIN User ON Booking.User_ID = User.User_ID;

---- Retrieve flights with no bookings:
SELECT Flight.Flight_ID, Flight.Airline, Flight.Departure_City, Flight.Arrival_City
FROM Flight
LEFT JOIN User_Flight ON Flight.Flight_ID = User_Flight.Flight_ID
WHERE User_Flight.User_Flight_ID IS NULL;

--- Retrieve users who have made a booking with their total spending (using a subquery):
SELECT User.User_ID, User.Name, User.Email, (
    SELECT SUM(Booking.Total_Price)
    FROM Booking
    WHERE Booking.User_ID = User.User_ID
) AS TotalSpent
FROM User;

--- Retrieve hotels and car rentals booked by a specific user:
SELECT User.Name AS User_Name, User_Hotel.Hotel_ID, Hotel.Name AS Hotel_Name,
       User_CarRental.Car_ID, CarRental.Car_Type
FROM User
LEFT JOIN User_Hotel ON User.User_ID = User_Hotel.User_ID
LEFT JOIN Hotel ON User_Hotel.Hotel_ID = Hotel.Hotel_ID
LEFT JOIN User_CarRental ON User.User_ID = User_CarRental.User_ID
LEFT JOIN CarRental ON User_CarRental.Car_ID = CarRental.Car_ID;


