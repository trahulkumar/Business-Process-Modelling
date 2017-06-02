---setting environment for displaying hours , minutes and seconds 
alter session set nls_date_format = 'dd/MON/yyyy hh24:mi:ss';

---
--drop table delivery;
--drop table travelinfo;
--drop table baggage;
--drop table flight;
--drop table passenger;
--drop table check_point;
---

--Pasenger table creation
create table passenger (passenger_id varchar(25) primary key, first_name varchar(25) not null,last_name varchar2(25) not null,email varchar2(25) not null, phonenumber varchar2(15) not null);
describe passenger;

--Flight table creation
create table flight (flight_id varchar2(25) primary key, departure_airport varchar2(25) not null, arrival_airport varchar2(25) not null, departure_time date not null, arrival_time date not null, gate_number varchar2(10));
describe flight;

--TravelInfo table creation
create table travelinfo (ticket_id varchar2(25) primary key, t_passenger_id varchar2(25) not null, t_flight_id varchar2(25) not null, travel_date date not null, constraint p_id foreign key (t_passenger_id) references passenger(passenger_id), constraint f_id foreign key (t_flight_id) references flight (flight_id));
describe travelinfo;

--Baggage table creation
create table baggage (bag_id varchar2(20) primary key, passenger_id varchar2(25) not null, flight_id varchar2(25) not null, constraint p_id2 foreign key (passenger_id) references passenger(passenger_id),constraint p_fid2 foreign key (flight_id) references flight(flight_id),  baggage_weight number(7));
describe baggage;

--Check_point table creation
create table check_point (check_id varchar2(10) primary key, check_point_name varchar2(100) not null);
describe check_point;

--Delivery table creation
create table delivery (tracking_id varchar2(25) primary key, bag_id varchar2(20),check_id varchar2(25), date_time date not null unique, delivery_status char(6) constraint ds_chk check (delivery_status in ('YES', 'NO')), constraint bag_id1 foreign key(bag_id) references baggage(bag_id), constraint check_id1 foreign key(check_id) references check_point(check_id));
describe delivery;

--insert data into passenger table
insert into passenger values('P0001','FN0001','LN0001','FN0001.LN0001@gmail.com',8609946500);
insert into passenger values('P0002','FN0002','LN0002','FN0002.LN0002@gmail.com',8609946501);
insert into passenger values('P0003','FN0003','LN0003','FN0003.LN0003@gmail.com',8609946502);
insert into passenger values('P0004','FN0004','LN0004','FN0004.LN0004@gmail.com',8609946503);
insert into passenger values('P0005','FN0005','LN0005','FN0005.LN0005@gmail.com',8609946504);
insert into passenger values('P0006','FN0006','LN0006','FN0006.LN0006@gmail.com',8609946505);
insert into passenger values('P0007','FN0007','LN0007','FN0007.LN0007@gmail.com',8609946506);
insert into passenger values('P0008','FN0008','LN0008','FN0008.LN0008@gmail.com',8609946507);
insert into passenger values('P0009','FN0009','LN0009','FN0009.LN0009@gmail.com',8609946508);
insert into passenger values('P0010','FN0010','LN0010','FN0010.LN0010@gmail.com',8609946509);

--insert data into flight table
insert into flight values('Fl0001','ATL','ORD',TO_DATE('04-18-2017 11:00:00','MM-DD-YYYY HH24:MI:SS'),TO_DATE('04-18-2017 14:30:00','MM-DD-YYYY HH24:MI:SS'),'G01');
insert into flight values('Fl0002','LAX','DFW',TO_DATE('04-19-2017 12:30:00 ','MM-DD-YYYY HH24:MI:SS'),TO_DATE('04-19-2017 5:40:00','MM-DD-YYYY HH24:MI:SS'),'G01');
insert into flight values('Fl0003','DEN','SFO',TO_DATE('04-17-2017 21:10:00 ','MM-DD-YYYY HH24:MI:SS'),TO_DATE('04-17-2017 22:50:00','MM-DD-YYYY HH24:MI:SS'),'G01');
insert into flight values('Fl0004','BOS','JFK',TO_DATE('04-19-2017 18:20:00 ','MM-DD-YYYY HH24:MI:SS'),TO_DATE('04-19-2017 20:00:00','MM-DD-YYYY HH24:MI:SS'),'G02');
insert into flight values('Fl0005','LAS','IAH',TO_DATE('04-20-2017 7:00:00','MM-DD-YYYY HH24:MI:SS'),TO_DATE('04-20-2017 12:00:00','MM-DD-YYYY HH24:MI:SS'),'G01');
insert into flight values('Fl0006','CLT','MCO',TO_DATE('04-19-2017 15:45:00 ','MM-DD-YYYY HH24:MI:SS'),TO_DATE('04-19-2017 17:30:00','MM-DD-YYYY HH24:MI:SS'),'G04');
insert into flight values('Fl0007','EWR','SEA',TO_DATE('03-19-2017 19:00:00 ','MM-DD-YYYY HH24:MI:SS'),TO_DATE('03-19-2017 22:15:00','MM-DD-YYYY HH24:MI:SS'),'G01');
insert into flight values('Fl0008','PHL','MSP',TO_DATE('03-20-2017 11:30:00 ','MM-DD-YYYY HH24:MI:SS'),TO_DATE('03-20-2017 13:20:00','MM-DD-YYYY HH24:MI:SS'),'G06');
insert into flight values('Fl0009','LGA','DTW',TO_DATE('04-19-2017 9:45:00 ','MM-DD-YYYY HH24:MI:SS'),TO_DATE('04-19-2017 11:45:00','MM-DD-YYYY HH24:MI:SS'),'G01');
insert into flight values('Fl0010','SAN','TPA',TO_DATE('03-20-2017 3:00:00','MM-DD-YYYY HH24:MI:SS'),TO_DATE('03-20-2017 9:00:00','MM-DD-YYYY HH24:MI:SS'),'G03');

--insert data into travelinfo table
insert into travelinfo values('TK0001','P0001','Fl0001', TO_DATE('04-18-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0002','P0002','Fl0002', TO_DATE('04-19-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0003','P0003','Fl0003', TO_DATE('04-17-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0004','P0001','Fl0004', TO_DATE('04-19-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0005','P0002','Fl0001', TO_DATE('04-18-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0006','P0003','Fl0002', TO_DATE('04-19-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0007','P0004','Fl0003', TO_DATE('04-17-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0008','P0005','Fl0004', TO_DATE('04-19-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0009','P0006','Fl0009', TO_DATE('04-19-2017','mm-dd-yyyy'));
insert into travelinfo values('TK0010','P0007','Fl0006', TO_DATE('04-19-2017','mm-dd-yyyy'));

-- insert data into baggage  table
insert into baggage values('BG0001','P0001','Fl0001',35);
insert into baggage values('BG0002','P0001','Fl0004',25);
insert into baggage values('BG0003','P0002','Fl0002',29);
insert into baggage values('BG0004','P0003','Fl0003',30);
insert into baggage values('BG0005','P0005','Fl0004',31);
insert into baggage values('BG0006','P0005','Fl0004',28);
insert into baggage values('BG0007','P0006','Fl0009',25);
insert into baggage values('BG0008','P0006','Fl0009',40);
insert into baggage values('BG0009','P0007','Fl0006',30);
insert into baggage values('BG0010','P0007','Fl0006',34);

-- insert data into check_point table
insert into check_point values('L001','Check-in');
insert into check_point values('L002','Scanning-security');
insert into check_point values('L003','Boarding flight');
insert into check_point values('L004','Unloading flight');
insert into check_point values('L005','Delivery point');

--insert data into delivery table
--each baggage has separate record which is captured by RFID scanners at each location
--delivery column is 'YES' if the bag is delivered and it will have Check_id='L005'
Insert into delivery values ('TR0001','BG0001','L005',TO_DATE('18-04-2017  15:00:00','dd-mm-yyyy hh24:mi:ss'),'YES');
Insert into delivery values ('TR0002','BG0001','L004',TO_DATE('18-04-2017  14:39:45','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0003','BG0001','L003',TO_DATE('18-04-2017  10:48:20','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0004','BG0001','L002',TO_DATE('18-04-2017  10:31:40','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0005','BG0001','L001',TO_DATE('18-04-2017  10:19:15','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0006','BG0002','L003',TO_DATE('19-04-2017  18:14:30','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0007','BG0002','L002',TO_DATE('19-04-2017  18:07:30','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0008','BG0002','L001',TO_DATE('19-04-2017  17:59:28','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0009','BG0003','L005',TO_DATE('19-04-2017  16:02:00','dd-mm-yyyy hh24:mi:ss'),'YES');
Insert into delivery values ('TR0010','BG0003','L004',TO_DATE('19-04-2017  15:55:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0011','BG0003','L003',TO_DATE('19-04-2017  12:12:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0012','BG0003','L002',TO_DATE('19-04-2017  11:59:21','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0013','BG0003','L001',TO_DATE('19-04-2017  11:48:50','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0014','BG0004','L003',TO_DATE('17-04-2017  20:50:50','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0015','BG0004','L002',TO_DATE('17-04-2017  20:42:10','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0016','BG0004','L001',TO_DATE('17-04-2017  20:31:54','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0017','BG0005','L005',TO_DATE('19-04-2017  20:51:00','dd-mm-yyyy hh24:mi:ss'),'YES');
Insert into delivery values ('TR0018','BG0005','L004',TO_DATE('19-04-2017  20:46:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0019','BG0005','L003',TO_DATE('19-04-2017  18:01:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0020','BG0005','L002',TO_DATE('19-04-2017  17:54:20','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0021','BG0005','L001',TO_DATE('19-04-2017  17:48:40','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0022','BG0006','L005',TO_DATE('19-04-2017  20:31:00','dd-mm-yyyy hh24:mi:ss'),'YES');
Insert into delivery values ('TR0023','BG0006','L004',TO_DATE('19-04-2017  20:09:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0024','BG0006','L003',TO_DATE('19-04-2017  18:17:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0025','BG0006','L002',TO_DATE('19-04-2017  18:12:10','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0026','BG0006','L001',TO_DATE('19-04-2017  17:58:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0027','BG0007','L005',TO_DATE('19-04-2017  12:14:00','dd-mm-yyyy hh24:mi:ss'),'YES');
Insert into delivery values ('TR0028','BG0007','L004',TO_DATE('19-04-2017  11:59:20','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0029','BG0007','L003',TO_DATE('19-04-2017  09:40:50','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0030','BG0007','L002',TO_DATE('19-04-2017  09:34:30','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0031','BG0007','L001',TO_DATE('19-04-2017  09:15:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0032','BG0008','L005',TO_DATE('19-04-2017  12:14:00','dd-mm-yyyy hh24:mi:ss'),'YES');
Insert into delivery values ('TR0033','BG0008','L004',TO_DATE('19-04-2017  11:58:20','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0034','BG0008','L003',TO_DATE('19-04-2017  09:41:50','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0035','BG0008','L002',TO_DATE('19-04-2017  09:33:30','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0036','BG0008','L001',TO_DATE('19-04-2017  09:15:20','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0037','BG0009','L005',TO_DATE('19-04-2017  18:31:00','dd-mm-yyyy hh24:mi:ss'),'YES');
Insert into delivery values ('TR0038','BG0009','L004',TO_DATE('19-04-2017  18:11:40','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0039','BG0009','L003',TO_DATE('19-04-2017  15:31:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0040','BG0009','L002',TO_DATE('19-04-2017  15:18:09','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0041','BG0009','L001',TO_DATE('19-04-2017  15:01:00','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0042','BG0010','L004',TO_DATE('19-04-2017  17:52:25','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0043','BG0010','L003',TO_DATE('19-04-2017  15:31:07','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0044','BG0010','L002',TO_DATE('19-04-2017  15:12:50','dd-mm-yyyy hh24:mi:ss'),'NO');
Insert into delivery values ('TR0045','BG0010','L001',TO_DATE('19-04-2017  14:31:00','dd-mm-yyyy hh24:mi:ss'),'NO');
