USE myhoteldb;

#creating table 'hotel bookings'
CREATE TABLE hotel_bookings (
    hotel VARCHAR(50),
    is_canceled INT,
    lead_time INT,
    arrival_year INT,
    arrival_month VARCHAR(20),
    adults INT,
    children INT,
    babies INT,
    country VARCHAR(10),
    reserved_room_type VARCHAR(5),
    assigned_room_type VARCHAR(5),
    reservation_status VARCHAR(20)
);

#inserting data into table
INSERT INTO hotel_bookings VALUES
('Resort Hotel',0,342,2015,'July',2,0,0,'PRT','C','C','Check-Out','2015-07-01','Desired','Couples'),
('Resort Hotel',0,737,2015,'July',2,0,0,'PRT','C','C','Check-Out','2015-07-01','Desired','Couples'),
('Resort Hotel',0,7,2015,'July',1,0,0,'GBR','A','C','Check-Out','2015-07-02','Un-Desired','Single'),
('Resort Hotel',0,13,2015,'July',1,0,0,'GBR','A','A','Check-Out','2015-07-02','Desired','Single'),
('Resort Hotel',0,14,2015,'July',2,0,0,'GBR','A','A','Check-Out','2015-07-03','Desired','Couples'),
('Resort Hotel',0,0,2015,'July',2,0,0,'PRT','C','C','Check-Out','2015-07-03','Desired','Couples'),
('Resort Hotel',0,9,2015,'July',2,0,0,'PRT','C','C','Check-Out','2015-07-03','Desired','Couples'),
('Resort Hotel',1,85,2015,'July',2,0,0,'PRT','A','A','Canceled','2015-05-06','Desired','Couples'),
('Resort Hotel',1,75,2015,'July',2,0,0,'PRT','D','D','Canceled','2015-04-22','Desired','Couples'),
('Resort Hotel',0,35,2015,'July',2,0,0,'PRT','D','D','Check-Out','2015-07-05','Desired','Couples'),
('Resort Hotel',0,68,2015,'July',2,0,0,'USA','D','E','Check-Out','2015-07-05','Un-Desired','Couples'),
('Resort Hotel',0,18,2015,'July',2,1,0,'ESP','G','G','Check-Out','2015-07-05','Desired','Family'),
('Resort Hotel',0,37,2015,'July',2,0,0,'PRT','E','E','Check-Out','2015-07-05','Desired','Couples'),
('Resort Hotel',0,12,2015,'July',2,0,0,'IRL','A','E','Check-Out','2015-07-02','Un-Desired','Couples'),
('Resort Hotel',0,0,2015,'July',2,0,0,'FRA','A','G','Check-Out','2015-07-02','Un-Desired','Couples'),
('Resort Hotel',0,7,2015,'July',2,0,0,'GBR','G','G','Check-Out','2015-07-05','Desired','Couples'),
('Resort Hotel',0,37,2015,'July',1,0,0,'GBR','F','F','Check-Out','2015-07-06','Desired','Single'),
('Resort Hotel',0,72,2015,'July',2,0,0,'PRT','A','A','Check-Out','2015-07-07','Desired','Couples'),
('Resort Hotel',0,78,2015,'July',2,0,0,'PRT','D','D','Check-Out','2015-07-08','Desired','Couples'),
('Resort Hotel',0,48,2015,'July',2,0,0,'IRL','D','D','Check-Out','2015-07-08','Desired','Couples'),
('Resort Hotel',1,60,2015,'July',2,0,0,'PRT','E','E','Canceled','2015-05-11','Desired','Couples'),
('Resort Hotel',0,77,2015,'July',2,0,0,'PRT','A','A','Check-Out','2015-07-08','Desired','Couples'),
('Resort Hotel',0,118,2015,'July',1,0,0,NULL,'A','A','Check-Out','2015-07-15','Desired','Single'),
('Resort Hotel',0,95,2015,'July',2,0,0,'GBR','D','D','Check-Out','2015-07-16','Desired','Couples'),
('Resort Hotel',1,96,2015,'July',2,0,0,'PRT','E','E','Canceled','2015-05-29','Desired','Couples'),
('Resort Hotel',0,69,2015,'July',2,0,0,'IRL','A','C','Check-Out','2015-07-08','Un-Desired','Couples'),
('Resort Hotel',1,45,2015,'July',3,0,0,'PRT','D','D','Canceled','2015-05-19','Desired','Family'),
('Resort Hotel',0,15,2015,'July',2,0,0,'ESP','A','C','Check-Out','2015-07-06','Un-Desired','Couples'),
('Resort Hotel',0,36,2015,'July',3,0,0,'PRT','D','D','Check-Out','2015-07-06','Desired','Family'),
('Resort Hotel',0,70,2015,'July',2,0,0,'ROU','E','E','Check-Out','2015-07-07','Desired','Couples');

#table is shown
SELECT * FROM hotel_bookings;

#total bookings
SELECT COUNT(*) FROM hotel_bookings;

#cancellation count
SELECT COUNT(*) FROM hotel_bookings
WHERE is_canceled=1;

#cancellation percentage
SELECT (COUNT(*)*100.0/(SELECT COUNT(*) FROM hotel_bookings)) AS cancel_percentage
FROM hotel_bookings
WHERE is_canceled=1

#hotel type analysis
SELECT hotel, COUNT(*)
FROM hotel_bookings
GROUP BY hotel;

#Guest Type Analysis
SELECT guest_type, COUNT(*)
FROM hotel_bookings
GROUP BY guest_type;

#Monthly Bookings
SELECT arrival_month, COUNT(*)
FROM hotel_bookings
GROUP BY arrival_month;

DESCRIBE hotel_bookings;

#Room Status
SELECT room_status, COUNT(*)
FROM hotel_bookings
GROUP BY room_status;