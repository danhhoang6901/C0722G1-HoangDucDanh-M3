-- SQL 1-5
-- Task 2: 
select * from nhan_vien 
where (ho_ten like 'H%' or ho_ten like 'K%' or ho_ten like 'T%') 
and char_length(ho_ten) <=15; 

-- Task 3:
select * from khach_hang 
where ((year(now())-year(ngay_sinh)) between 18 and 50) 
and(dia_chi like '% Đà Nẵng' or dia_chi like '% Quảng Trị');

-- Task 4:
select khach_hang.ma_khach_hang,khach_hang.ho_ten,count(hop_dong.ma_khach_hang) 
as so_lan_dat_phong
from khach_hang 
join hop_dong 
on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join loai_khach
on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
where (loai_khach.ten_loai_khach = 'Diamond')
group by hop_dong.ma_khach_hang
order by so_lan_dat_phong;

-- Task 5:
select khach_hang.ma_khach_hang,khach_hang.ho_ten,
loai_khach.ten_loai_khach,
hop_dong.ma_hop_dong,
dich_vu.ten_dich_vu,
hop_dong.ngay_lam_hop_dong,hop_dong.ngay_ket_thuc,
sum(dich_vu.chi_phi_thue + hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia) as tong_tien
from khach_hang
left join hop_dong
on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
left join dich_vu
on hop_dong.ma_dich_vu = dich_vu.ma_dich_vu
left join loai_khach
on khach_hang.ma_loai_khach = loai_khach.ma_loai_khach
left join hop_dong_chi_tiet
on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
left join dich_vu_di_kem
on dich_vu_di_kem.ma_dich_vu_di_kem = hop_dong_chi_tiet.ma_dich_vu_di_kem
group by hop_dong.ma_hop_dong
order by khach_hang.ma_khach_hang;