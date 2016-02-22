Create Database MTS;
use MTS;
create table Subscribers (PhoneNumber int Primary key, Name varchar(35), Adds varchar(35), Paymant int, Balans float);
create table Tarifs (Country varchar(35), City varchar(35), OneMinut float, LStart time, LEnd time, Tax int, CONSTRAINT TarifsPrimary  PRIMARY KEY (Country, City, Oneminut) );
create table Checks (Date date, Subscriber int foreign key references Subscribers(PhoneNumber), Country varchar(35), City varchar(35), TStart time, TEnd time, Oneminut float, CheckNumber int, CONSTRAINT ChecksTarifsForeign FOREIGN KEY (Country, City, Oneminut) REFERENCES Tarifs);