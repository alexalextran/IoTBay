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
('Lucy Lu', 'lucy.lu@uts.com', 'lucylu', '2312413')
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
   "NAME" VARCHAR(80)  ,    
   "AMOUNT" NUMERIC(10)  ,
   "PRICE" DOUBLE ,
   "CUSTOMERID" INT ,
   FOREIGN KEY (CUSTOMERID) REFERENCES "Users"(ID)
);

Insert into “Order” (NAME,AMOUNT,PRICE,CUSTOMERID)
VALUES
('Apple airtag',7,1050,3),
('Kogan Full HD 1080P Webcam',3,90,3),
('Nanoleaf Shapes - Hexagons Starter Kit (9 Panels)',3,1050,3),
('Gigabyte GeForce RTX 3060 Gaming OC 12GB',5,3250,3),
('Nanoleaf Shapes - Hexagons Starter Kit (9 Panels)',3,1050,2),

