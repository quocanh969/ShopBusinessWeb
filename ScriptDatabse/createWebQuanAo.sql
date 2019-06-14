create database WEB_QUAN_AO
go

use WEB_QUAN_AO
go

create table LOAI
(
	maLoai int identity(1,1) primary key,
	tenLoai nvarchar(max),
)
go

create table SANPHAM
(
	maSP int identity(1,1) primary key,
	maLoai int,
	tenSP nvarchar(max),
	giaBan float,
	soLuong int,
	xuatSu nvarchar(max),
	nhaSanXuat nvarchar(max),
	moTa nvarchar(max),
	hinhAnh nvarchar(max),
	ngayNhan datetime,
	FOREIGN KEY (maLoai) REFERENCES LOAI(maLoai)
)
go

