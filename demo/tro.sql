drop database if exists phong_tro;
create database phong_tro;
use phong_tro;
create table thanh_toan (
id int auto_increment primary key,
hinh_thuc_thanh_toan varchar(50),
is_delete bit default 0

);
create table thue_tro (
ma_phong_tro int primary key auto_increment,
ten_nguoi_thue_tro varchar(50),
so_dien_thoai varchar(10),
ngay_bat_dau_thue date,
hinh_thuc_thanh_toan int,
ghi_chu varchar(50),
is_delete bit default 0,
foreign key(hinh_thuc_thanh_toan) references thanh_toan(id)
);

insert into thanh_toan (hinh_thuc_thanh_toan)
value ('Thanh toán theo tháng'),
	  ('Thanh toán theo quý'),
      ('Thanh toán theo năm');
      
insert into thue_tro (ten_nguoi_thue_tro,so_dien_thoai,ngay_bat_dau_thue,hinh_thuc_thanh_toan,ghi_chu)
value ('Hoàng Đức Danh','0949890225','2022-11-15',1,'Đẹp'),
 ('Vinh123','0949890234','2022-12-15',3,'Rộng'),
 ('Mậu Hoàng','0949890123','2022-10-15',2,'Mát mẻ');