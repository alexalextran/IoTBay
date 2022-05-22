/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  atran
 * Created: 22 May 2022
 */


CREATE TABLE "Staff"

(   
   "ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),  
   "FNAME" VARCHAR(250)  ,    
   "LNAME" VARCHAR(250)  ,
   "ADDRESS" VARCHAR(100)  ,
   "EMAIL" VARCHAR(250)  ,
   "USERNAME"  VARCHAR(250)  , 
   "PASSWORD"  VARCHAR(250)  ,
   "POSITION"  VARCHAR(250)  ,   
   "MOBILE" VARCHAR(100)  ,
   "STATUS" BOOLEAN  
);

INSERT INTO "Staff" (FNAME, LNAME, ADDRESS,EMAIL, USERNAME, PASSWORD, POSITION,  MOBILE,  STATUS)
VALUES
('Jason', 'Vu', '6 Test Rd, Plumpton', 'jason.vu@gmail.com','JasonVu', 'medusa', 'Delevelop', '61123456789', true),
('Alex', 'Tran', '6 Test Rd, Plumpton', 'alex.tran@gmail.com','AlexTran', 'bruh', 'Delevelop', '61000000000', true),
('Joshua', 'Nguyen', '6 Test Rd, Plumpton', 'joshua.nguyen@gmail.com','JohsuaNguyan', 'ascenttables', 'Delevelop', '61999888777', true),
('Aliza', 'faixal', '6 Test Rd, Plumpton', 'aliza.faixal@gmail.com','Alizafaixal', 'php', 'Delevelop', '61123123123', true),
('Brendon', 'Mai', '6 Test Rd, Plumpton', 'brendon.mai@gmail.com','AlexTran', 'rabipants', 'Delevelop', '61222666888', true),
('Steve', 'Jobs', '6 Test Rd, Plumpton', 'steve.jobs@gmail.com','steve', 'rabipants', 'Delevelop', '6233123123', true),
('John', 'johnson', '6 Test Rd, Plumpton', 'john.johnson@gmail.com','jonny', 'rabipants', 'Delevelop', '6231123123', true),
('Bill', 'Gates', '6 Test Rd, Plumpton', 'bill.gates@gmail.com','bill', 'rabipants', 'Delevelop', '623309123', true),
('Johnny', 'Sins', '6 Test Rd, Plumpton', 'Jonny.sins@gmail.com','hub', 'rabipants', 'Delevelop', '623113123', true),
('Alex', 'Steve', '6 Test Rd, Plumpton', 'alex.steve@gmail.com','alex', 'rabipants', 'Delevelop' ,'613613123', true),
('Salman', 'Zaid', '6 Test Rd, Plumpton', 'sa.zaid@gmail.com','salmanZaid', 'medusa', 'Web Delevelop', '61123456789', true),
('Sam', 'Tran', '6 Test Rd, Plumpton', 'Sam.tran@gmail.com','SamTran', 'bruh', 'IT Admin', '61000000000', true),
('Sofia', 'Damn', '6 Test Rd, Plumpton', 'Sofia.Damn@gmail.com','sofiaDamn', 'ascenttables', 'Delevelop', '61999888777', true),
('Aliza', 'faixal', '6 Test Rd, Plumpton', 'aliza.faixal@gmail.com','Alizafaixal', 'php', 'Project Manager', '61123123123', true),
('Grace', 'handosn', '6 Test Rd, Plumpton', 'Grace.handosn@gmail.com','graceHandson', 'rabipants', 'Front-end engineer', '61222666888', true),
('frankie', 'bu', '6 Test Rd, Plumpton', 'frankie.bu@gmail.com','frankie', 'rabipants', 'Back-end engineer', '6233123123', true),
('mark', 'markson', '6 Test Rd, Plumpton', 'mark.markson@gmail.com','marky', 'rabipants', 'Full stack engineer', '6231123123', true),
('jibran', 'khairi', '6 Test Rd, Plumpton', 'jibran.khairi@gmail.com','jibran', 'rabipants', 'HR manager', '623309123', true),
('Fatima', 'Sins', '6 Test Rd, Plumpton', 'fatima.sins@gmail.com','hub', 'rabipants', 'Assitant', '623113123', true),
('Alex', 'Steve', '6 Test Rd, Plumpton', 'alex.steve@gmail.com','alex', 'rabipants', 'Desk help' ,'613613123', true)
;

CREATE TABLE "Users"
(   
   "ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),  
   "NAME" VARCHAR(20)  ,    
   "EMAIL" VARCHAR(40)  ,
   "PASSWORD" VARCHAR(20)  ,
   "PHONE" VARCHAR(20)  
);
INSERT INTO "Users" (NAME,EMAIL,PASSWORD,PHONE)
VALUES
('Blank', '', '', '61123456789'),
('Jason Vu', 'jason.vu@gmail.com', 'medusa', '61123456789'),
('Alex Tran', 'alex.tran@gmail.com', 'bruh', '61000000000'),
('Joshua Nguyen', 'joshua.nguyen@gmail.com', 'ascenttables', '61999888777'),
('Aliza faixal', 'aliza.faixal@gmail.com', 'php', '61123123123'),
('Brendon Mai', 'brendon.mai@gmail.com', 'rabipants', '61222666888'),
('Steve Jobs', 'steve.jobs@gmail.com', 'steve', '6233123123'),
( 'John johnson', 'john.johnson@gmail.com', 'jonny', '6231123123'),
( 'Bill Gates', 'bill.gates@gmail.com', 'bill', '623309123'),
( 'Johnny Sins', 'Jonny.sins@gmail.com', 'hub', '623113123'),
( 'Alex Steve', 'alex.steve@gmail.com', 'alex', '613613123'),
('Samuel Evangelista', 'samuel@gmail.com', 'evangelion', '7127317'),
('Maxl Cozis', 'maxl@gmail.com', 'sekiro', '71231517'),
('Felonious Gru', 'gru@gmail.com', 'gorls', '28137411'),
('Shinji Ikari', 'shinji@gmail.com', 'coma', '21847111'),
('Adam Montesin', 'adam@gmail.com', 'minecraft', '21176461'),
('Kevin Nguyen', 'kevin@gmail.com', 'dragonsleve', '23187461'),
('Tyrone Tyrone', 'quandale@gmail.com', 'jazz', '21837161'),
('adam montesin', 'adam@gmail.com', 'minecraft', '21176461'),
('john smith', 'john.smith@uts.com', 'user222', '21163461'),
('Lucy Lu', 'lucy.lu@uts.com', 'lucylu', '2312413'),
('Steve Rogers', 'steve@gmail.com', 'vibranium', '11118888')
;


CREATE TABLE "Product"
(   
   "ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),  
   "NAME" VARCHAR(200)  ,    
   "TYPE" VARCHAR(200)  ,
   "PRICE" DOUBLE ,
   "STOCK" NUMERIC(10)  
);
INSERT INTO "Product" (NAME,TYPE,PRICE,STOCK)
VALUES
('Kogan Full HD 1080P Webcam', 'Camera', 30, 200),
('Nanoleaf Shapes - Hexagons Starter Kit (9 Panels)', 'Lights', 350, 200),
('Gigabyte GeForce RTX 3060 Gaming OC 12GB', 'Gigabyte GeForce RTX 3060 Gaming OC 12GB',650, 150),
('Apple airtag', 'Tracking tag', 150, 100),
('MacBook Air', 'Laptop', 1600, 85),
('Light sensor', 'sensor', 200, 25),
('Fitbit Charge 4 ', 'Tracker', 152, 50),
('Echo Dot (3rd Gen)', 'Smart Speaker', 40, 300),
('Beats Solo 3 Wireless', 'Headphones', 300, 150),
('GamaKay K61 Mechanical Keyboard', 'Keyboard', 87, 230),
('Frog Design Wired Mouse', 'Mouse', 7, 50),
('Logitech G G502 LIGHTSPEED Wireless Gaming Mouse', 'Mouse', 146, 60),
('JBL Pulse 4 - Waterproof Portable Bluetooth Speaker ', 'Speaker', 300, 75),
('PlayStation 5 ', 'Console', 750, 1),
('Xbox Series X ', 'Console', 750, 100),
('Apple iPhone 13 Pro Max 256GB', 'Phone', 2020, 69),
('Samsung Galaxy S22 Ultra 5G 512GB', 'Phone', 2150, 420),
('DJI Mini 2 4K Drone', 'Drone', 950, 21),
('Hisense 120" 4K HDR Laser Cinema Projector', 'Projector', 5000, 30),
('LG C1 55" Self Lit OLED 4K Ultra HD Smart TV', 'TV', 2795, 40);


CREATE TABLE "Acess_Log" (
    ID int not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    DATE VARCHAR(30) NOT NULL,
    CUSTOMER_ID int,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES "Users"(ID)
);

CREATE TABLE "Order"
(   
   "ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),  
   DATE VARCHAR(40), 
   "NAME" VARCHAR(80)  ,    
   "AMOUNT" NUMERIC(10)  ,
   "PRICE" DOUBLE ,
   "CUSTOMERID" INT ,
   FOREIGN KEY (CUSTOMERID) REFERENCES "Users"(ID)
);


CREATE TABLE "Payment"
(   
   "ID" INT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),  
   "CARDNO" VARCHAR(16)  ,    
   "NAMEONCARD" VARCHAR(80)  ,
   "MMYY" VARCHAR(5),
   "SECCODE" VARCHAR(3) ,
   "ORDERID" INT ,
   FOREIGN KEY (ORDERID) REFERENCES "Order"(ID)
);


