create database BookMyShow
create table Customer(
CID int    PRIMARY KEY,
Cname Varchar(30) not null,
Mobile int not null,
emial varchar(20) not null,
city varchar(10) not null
)
create table Movie(
 MID int primary key,
 Mname varchar(30) not null,
 Language varchar(30) not null,
 gener varchar(20) not null,
 Duration int not null
 )
 create table Theater (
 TID int primary key,
 Tname Varchar(30) not null,
 TLocation varchar(25) not null,
 city varchar(20) not null,
 Screens int not null
 )
 create table Show(
 SID int primary key  ,
 M_ID int,
 T_ID int,
 show_date Date not null,
 Time time not null,
 foreign key(M_id) references Movie(MID),
 foreign key(T_id) references Theater(TID)
 )
 create table Booking(
 BID int primary key,
 C_ID int,
 S_ID int,
 seats int not null,
 Date date not null,
 foreign key(C_ID) references Customer(CID),
 foreign key(S_ID) references Show(SID)
 )
 create table payment(
 PID int primary key,
 B_ID int ,
 Amount int not null,
 PType varchar(20),
 Pstatus varchar(20),
 foreign key(B_ID) references Booking(BID)
 )
 insert into Customer values
 (101,'Barath',967847,'barath04@gmail.com','TPT'),
 (102,'Kalyan',967657,'kalyan04@gmail.com','HYD'),
 (103,'Sham',887847,'sham18@gmail.com','KRNl'),
 (104,'Vikas',867847,'vikas4@gmail.com','Vizag'),
 (105,'Balu',968697,'balu9@gmail.com','ADN'),
 (106,'Narshima',967847,'nara5@gmail.com','KADAPA'),
 (107,'kiran',967847,'kiran0@gmail.com','KRNL'),
 (108,'Raju',767847,'raju09@gmail.com','BANG'),
 (109,'Anjali',967647,'anju05@gmail.com','CHENNAI'),
 (110,'sreesai',967687,'sai140@gmail.com','ATP'),
 (111,'prakash',967847,'prakash20@gmail.com','KADAPA'),
 (112,' jagadish',907847,'jaggu4@gmail.com','KRNL'),
 (113,'keshav',967847,'keshav0@gmail.com','ADN'),
 (114,'Allu arjun',786947,'allu08@gmail.com','HYD'),
 (115,'prasad',967847,'prasad110@gmail.com','NDYL');
  insert into Movie values
  (201,'kiladi','Telugu','Action And Comdey',158),
  (202,'PUSHPA','Telugu','Action',170),
  (203,'OG','Telugu','Action And Thiller',153),
  (204,'pokiri','Telugu','Action And Comdey',140),
  (205,'KGF','Kanada','Action And Thiller',170),
  (206,'LEO','Tamil','Action And thiller',157),
  (207,'Three','Tamil','Emotional',146),
  (208,'Kantara','Telugu and Kanada','Action and Drama',148),
  (209,'3 Idiots','Hindi','Comedy and Drama',170),
  (210,'Dabgal','Hindi','Sport and Drana',161),
  (211,'Vikram','Telugu and Tamil','Action and Thriller',174),
  (212,'Premam','Malayalam','Romance AND Drama',158),
  (213,'Sairat','Malyalam','Romance AND Drama',174),
  (214,'Lucai','Kannada','Mystery And Thriller',135),
  (215,'777 Charlie','Kannada','Adventure/Drama',164);
  insert into Theater values
(301,'Sri Lakshmi Cinemas','Main Road','Vijayawada',4),
(302,'PGR Cinemas','Near bus stop','Tirupathi',2),
(303,'INOX Multiplex','MG Road','Bengaluru',5),
(304,'Asian Cinemas','Kukatpally','Hyderabad',7),
(305,'Cinepolis','Hitech City','Hyderabad',8),
(306,'Prasads Multiplex','Necklace Road','Hyderabad',5),
(307,'Sathyam Cinemas','Royapettah','Chennai',6),
(308,'AGS Cinemas','T. Nagar','Chennai',4),
(309,'Lulu Mall Cinemas','Edappally','Kochi',9),
(310,'PVR Forum Mall','Koramangala','Bengaluru',7),
(311,'Miraj Cinemas','Andheri','Mumbai',5),
(312,'Carnival Cinemas','Andheri West','Mumbai',6),
(313,'Rajhans Cinemas','Paldi','Ahmedabad',4),
(314,'City Pride Cinemas','Kothrud','Pune',6),
(315,'INOX Central Mall','Salt Lake','Kolkata',5);
insert into Show values
(401,201,301,'2026-09-01','10:00:00'),
(402,202,302,'2026-09-01','13:30:00'),
(403,203,303,'2026-09-01','18:00:00'),
(404,204,304,'2026-09-02','10:30:00'),
(405,205,305,'2026-09-02','14:00:00'),
(406,206,306,'2026-09-02','18:30:00'),
(407,207,307,'2026-09-03','11:00:00'),
(408,208,308,'2026-09-03','15:00:00'),
(409,209,309,'2026-09-03','19:00:00'),
(410,210,310,'2026-09-04','10:00:00'),
(411,211,311,'2026-09-04','13:00:00'),
(412,212,312,'2026-09-04','17:30:00'),
(413,213,313,'2026-09-05','11:30:00'),
(414,214,314,'2026-09-05','15:30:00'),
(415,215,315,'2026-09-05','19:30:00');
insert into Booking values      
(501,101,401,'3','2026-08-26'),
(502,102,402,'4','2026-08-26'),
(503,103,403,'2','2026-08-26'),
(504,104,404,'5','2026-08-26'),
(505,105,405,'4,','2026-08-26'),
(506,106,406,'2','2026-08-26'),
(507,107,407,'2','2026-08-26'),
(508,108,408,'7','2026-08-26'),
(509,109,409,'6','2026-08-26'),
(510,110,410,'1','2026-08-26'),
(511,111,411,'3','2026-08-26'),
(512,112,412,'2','2026-08-26'),
(513,113,413,'1','2026-08-26'),
(514,114,414,'2','2026-08-26'),
(515,115,415,'1','2026-08-26');
insert into payment values
(601,501,250,'Cash','Successful'),
(602,502,300,'UPI','Successful'),
(603,503,450,'UPI','Successful'),
(604,504,350,'Cash','Successful'),
(605,505,500,'UPI','Successful'),
(606,506,400,'Cash','Pending'),
(607,507,300,'UPI','Successful'),
(608,508,550,'UPI','Successful'),
(609,509,250,'Cash','Successful'),
(610,510,600,'UPI','Successful'),
(611,511,450,'Cash','Pending'),
(612,512,350,'UPI','Successful'),
(613,513,500,'UPI','Successful'),
(614,514,300,'Cash','Successful'),
(615,515,650,'UPI','Successful');
select * from Customer
select * from Movie
select * from Theater
select * from Show
select * from Booking
select * from payment
drop table Customer
drop table Movie
drop table Theater
drop table  Show
drop table Booking
drop table payment
select Cname from Customer where city='TPT';
select Cname,Mobile from customer where city='HYD';
select Mname from Movie where Language='Telugu';
select Mname,gener from Movie where gener like '%Action%';
select Mname from Movie where  Duration>=150;
select * from Theater where city='Tirupathi';
select Tname,TLocation from Theater where Screens>3
select * from Show where Date='2026-09-02';
select SID,M_ID,Time from Show where Time>'18:00:00';
select * from Booking where seats>3;
select BID,C_ID,Seats from Booking where Date='2026-08-27';
select * from payment where Amount>500;
select PID,B_ID,PType from payment where PType='UPI';
select * from payment where Pstatus='Successful';
select Cname,email from Customer where city='TPT' or city='CHENNAI'; 
select Mname from Movie where Language='Telugu' AND gener like'%Action%';
select Mname from Movie where Duration>120 AND Duration<180;
select * from Customer where city = 'Tirupati' AND emial like '%gmail%';
select * from Theater where city='Tirupathi' OR city='Hyderabad';
select Tname from Therater where Screens=2 AND city='Tirupathi';
select * from Booking where seats>=2 AND seats<5;
select BID,C_ID from booking where Date='2026-08-26' OR seats>4;
select * from payment where Amount >500 AND Pstatus='Successful';
select PID,Amount,PType from payment where PType='UPI';
select Cname from Customer where (city='TPT' OR city='HYD') AND mobile is not null;
select CID,Cname from Customer where city='TPT';
select MID,Language,gener from Movie where Duration>120;
select Tname,City,Screens from Theater where Screens>3;
select SID,M_ID,Time from Show where Time>'18:00:00';
select PID,Amount,Pstatus from payment where Amount>500;
SELECT C.Cname, B.BID FROM Custumer AS C INNER JOIN Booking AS B ON C.CID = B.C_ID;
select M.Mname,  S.Time from Movie as M inner join Show as S on M.MID=S.M_ID;
select M.Mname, M.Language ,S.show_date from Movie as M inner join Show as S on M.MID=S.M_ID;
select T.Tname ,S.Time from Theater as T join Show as S on T.TID=S.T_ID;
select T.Tname,T.city,S.show_date from Theater as T join Show as S on T.TID=S.T_ID;
select M.Mname,T.Tname from Movie as M join Show as S on M.MID=S.M_ID join Theater as T on S.T_ID=T.TID where T.city='Tirupathi'; 
select M.Mname,T.Tname ,S.Time from Movie as M join Show as S on M.MID=S.M_ID join Theater as T On S.T_ID=T.TID where T.city='Tirupathi' AND S.Time>='18:00:00';
select C.Cname,M.Mname,B.Date from Custumer as C join Booking as B on C.CID=B.C_ID join Show as S on  B.S_ID= S.SID join Movie as M on S.M_ID=M.MID where B.Date>'2026-08-25' ;
select M.Mname,T.Tname,T.city from Movie as M join Show as S on M.MID=S.M_ID join Theater as T on S.T_ID=T.TID where M.Language='Telugu' OR T.city='Tiruapthi';
update Customer set city='Chittoor' where city='TPT' AND CID=101;
update Movie set gener='Action' where MID=207;
update Theater set Screens=Screens +1 where TID=303;
update payment set Pstatus='Successful' where PID=606;
update payment set PType='UPI' where Pstatus='pending' AND Amount<500; 
delete payment where PID=606;
delete Booking where BID=506;
delete Customer where CID=106;
delete Movie where Duration<140;
update Movie set Duration=Duration+10 where duration<140;
update Theater set Screens=Screens+1 where Screens<3;
update Theater set city='TPT' where city='Chittoor' AND Screens>=3;
update Movie set Language='Telugu' where Language='English' AND gener='Drama';
update Movie set gener='Action' where Language='Telugu' AND Duration>=120;
update Show set Time ='18:00:00' where show_date='2026-09-03' AND Time<'18:00:00';
update payment set PType='UPI' where PType='CASH';
update payment set Pstatus='Successful' where Amount>500 AND Pstatus='pending';
update payment set Pstatus='Failed' where amount<100 AND Pstatus='pending';
update payment set Amount=Amount+50 where PType='UPI' AND Amount<500;
SELECT * FROM Movie WHERE Duration = (SELECT MAX(Duration) FROM Movie);
SELECT * FROM Movie WHERE Duration = (SELECT MIN(Duration) FROM Movie);
SELECT * FROM Theater WHERE Screens = (SELECT MAX(Screens) FROM Theater);
SELECT * FROM Theater WHERE Screens = (SELECT MIN(Screens) FROM Theater);
SELECT * FROM Booking WHERE seats = (SELECT MAX(seats) FROM Booking);
SELECT * FROM Booking WHERE seats = (SELECT MIN(seats) FROM Booking);
SELECT * FROM payment WHERE Amount = (SELECT MAX(Amount) FROM payment);
SELECT * FROM payment WHERE Amount = (SELECT MIN(Amount) FROM payment);
SELECT Mname FROM Movie WHERE Duration > (SELECT AVG(Duration) FROM Movie);
SELECT Tname FROM Theater WHERE Screens > (SELECT AVG(Screens) FROM Theater);
SELECT Mname FROM Movie WHERE Duration > (SELECT Duration FROM Movie WHERE MID = 205);
SELECT Tname FROM Theater WHERE Screens > (SELECT Screens FROM Theater WHERE TID = 102);
SELECT Cname FROM Customer WHERE city = (SELECT city FROM Customer WHERE CID = 105);
SELECT * FROM Booking WHERE seats > (SELECT seats FROM Booking WHERE BID = 305);
SELECT * FROM payment WHERE Amount > (SELECT Amount FROM payment WHERE PID = 405);
SELECT Mname FROM Movie WHERE Duration < (SELECT AVG(Duration) FROM Movie);
SELECT Tname FROM Theater WHERE Screens < (SELECT AVG(Screens) FROM Theater);
SELECT Cname FROM Customer WHERE CID IN (SELECT C_ID FROM Booking);
SELECT Mname FROM Movie WHERE MID IN (SELECT M_ID FROM Show);
SELECT Tname FROM Theater WHERE TID IN (SELECT T_ID FROM Show);
SELECT Cname FROM Customer WHERE CID NOT IN (SELECT C_ID FROM Booking);
SELECT Mname FROM Movie WHERE Duration > (SELECT AVG(Duration) FROM Movie) AND Language = 'Telugu';
SELECT Tname FROM Theater WHERE Screens > (SELECT AVG(Screens) FROM Theater) AND city = 'Tirupathi';
SELECT * FROM payment WHERE Amount > (SELECT AVG(Amount) FROM payment) AND Pstatus = 'Successful';
SELECT Cname FROM Customer WHERE CID IN (SELECT C_ID FROM Booking WHERE seats > 2);
SELECT Mname FROM Movie M WHERE Duration > (SELECT AVG(Duration) FROM Movie WHERE Language = M.Language);
SELECT Tname FROM Theater T WHERE Screens > (SELECT AVG(Screens) FROM Theater WHERE city = T.city);
SELECT * FROM Customer C WHERE EXISTS (SELECT 1 FROM Booking B WHERE B.C_ID = C.CID AND B.seats > (SELECT AVG(B2.seats) FROM Booking B2 WHERE B2.C_ID = C.CID));
SELECT * FROM payment P WHERE Amount > (SELECT AVG(P2.Amount) FROM payment P2 WHERE P2.PType = P.PType);
SELECT Mname FROM Movie M WHERE Duration > (SELECT AVG(Duration) FROM Movie WHERE gener = M.gener);





