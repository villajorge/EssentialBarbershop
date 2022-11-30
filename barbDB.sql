DROP DATABASE IF EXISTS barbDB;
CREATE DATABASE barbDB;

USE barbDB;

DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
	id INT(3) primary key auto_increment,
    nameStr VARCHAR (50) not null
);

DROP TABLE IF EXISTS acc;
CREATE TABLE acc(
	id int(3) primary key auto_increment,
    nameStr VARCHAR(50) not null,
    userName VARCHAR(50) not null,
    pass VARCHAR(20) not null
);

DROP TABLE IF EXISTS avail;
CREATE TABLE avail(
	id int(3) primary key auto_increment,
    weekDay VARCHAR(10),
    barberID int(3) not null,
    FOREIGN key (barberID) references employee(id)
    
);

DROP TABLE IF EXISTS app;
CREATE TABLE app(
	id int(3) primary key auto_increment,
    barberID int(3) not null,
    availID int(3) not null,
    avail int(1) default 1,
    FOREIGN KEY (barberID) references employee(id),
    FOREIGN KEY (availID) references avail(id) 
);

insert into employee(nameStr)
VALUES("Bob");
insert into employee(nameStr)
VALUES("Rick");
insert into employee(nameStr)
VALUES("Al");
insert into acc(nameStr, userName, pass)
VALUES("Chris","Chris12","123");
insert into acc(nameStr, userName, pass)
VALUES("Origin","OriginX","1245");
insert into avail(weekDay, barberID)
VALUES("tuesday",1);
insert into avail(weekDay, barberID)
VALUES("tuesday",2);
insert into avail(weekDay, barberID)
VALUES("wednesday",1);
insert into avail(weekDay, barberID)
VALUES("wednesday",1);
insert into app(barberID, availID, avail)
VALUES(1,2, 0);
insert into app(barberID, availID, avail)
VALUES(2,1, 0);



