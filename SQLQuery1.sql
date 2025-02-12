--Database oluşturuldu
create database HastaneRandavuSistemiDb
go

--Oluşturulan database kullanıldı
use HastaneRandavuSistemiDb
go

--Hastalar tablosu oluşturuldu
create table Patient(
Id int primary key identity(1,1) not null,
[Name] nvarchar(50),
Surname nvarchar(50),
Age int,
Gender nvarchar(10),
TcNo nvarchar(11),
DepartmentId int,
IsStatus bit default 1,
IsDelete bit default 0
)

--Doktorlar tablosu oluşturuldu
create table Doctor(
Id int primary key identity(1,1) not null,
[Name] nvarchar(50),
Surname nvarchar(50),
IsStatus bit default 1,
IsDelete bit default 0)

--Departman tablosu oluşturuldu
create table Departmen(
Id int primary key identity(1,1) not null,
[Name] nvarchar(200),
IsStatus bit default 1,
IsDelete bit default 0
)

--DoktorDepartman tablosu oluşturuldu
create table DoctorDepartmen(
Id int primary key identity(1,1) not null,
DepartmentId int,
DoctorId int,
IsStatus bit default 1,
IsDelete bit default 0
)

--Hasta randavu tablosu oluşturuldu
create table PatientAppointment(
Id int primary key identity(1,1) not null,
DepartmentId int,
DoctorId int,
PatientId int,
[Date] date,
[Hour] time,
IsStatus bit default 1,
IsDelete bit default 0
)