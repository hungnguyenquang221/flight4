Use HETHONGDATVE
Go

Create table SANBAY(
Masanbay int primary key,
Tensanbay varchar(30))

Create table CHITIETCHUYENBAY(
Macbay int primary key,
Sanbayquacanh varchar(20),
Thoigianquacanh time)


create table TUYENBAY(
Matuyenbay int primary key,
Sanbaydi nvarchar(30),
sanbayden nvarchar(30),
Masanbay int,
foreign key (Masanbay) references SANBAY(Masanbay))

Create table CHUYENBAY(
Machuyenbay int primary key,
Ngaygio datetime,
Thoigianbay time,
Soghehangthuong int,
Soghehangthuongia int,
Matuyenbay int,
Masanbay int,
Macbay int,
foreign key(Matuyenbay) references TUYENBAY(Matuyenbay),
foreign key(Masanbay) references SANBAY(Masanbay),
foreign key(Macbay) references CHITIETCHUYENBAY(Macbay)
)

Create table MAYBAY(
Mamaybay int primary key,
Loaimaybay char(20),
Tenmaybay nvarchar(30),
Machuyenbay int,
foreign key(Machuyenbay) references CHUYENBAY(Machuyenbay), 
)

Create table VEMAYBAY(
Mavemaybay int primary key,
Tinhtrangve varchar(10),
Machuyenbay int,
Masanbay int,
foreign key(Machuyenbay) references CHUYENBAY(Machuyenbay),
foreign key(Masanbay) references SANBAY(Masanbay),
)

Create table VEDATCHO(
Mavedatcho int primary key,
Ngaydat datetime,
Soghe datetime)

Create table KHACHHANG(
Makh int,
Tenkh nvarchar(50),
Gioitinh varchar(10),
Cmnd int,
Sdt varchar(20),
Diachi nvarchar(50),
Primary key(makh, cmnd))

Create table HANGVE(
Mahangve int primary key,
Tenhangve varchar(20))

Create table DONGGIA(
Madongia int primary key,
Usd varchar(20))

Create table HOADON(
Mahoadon int primary key,
Tennv nvarchar(30),
Ngaylaphoadon datetime,
Giatien varchar(20),)

Create table NHANVIEN(
Manv int primary key,
Tennv nvarchar(30))

