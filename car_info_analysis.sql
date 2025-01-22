SELECT * FROM car_info
LIMIT 10

--menghitung harga rata-rata per brand--

SELECT Brand,
ceil(avg(price)) as harga_rataan
FROM car_info
group by Brand
order by ceil(avg(price)) desc;

--most popular brand--
SELECT brand,
count(*) as jumlah
FROM car_info
group by brand
order by jumlah desc;

--most popular model per brand--
SELECT brand,
model,
count(*) as jumlah
from car_info
group by brand, model
order by jumlah desc;

--most popularity year--
SELECT year,
count(year) as jumlah
from car_info
group by year
order by jumlah desc;

--kebaruan mobil--
SELECT
case when year >= 2020 then "Baru"
else "Lama"
end as kebaruan,
count(*)
from car_info
group by kebaruan;

--Kilometer analysis--
select year,
ceil(avg(Kilometers)) as rata_rata
from car_info
group by year
order by rata_rata desc;

--klasifikasi jarak tempuh--
select
case when kilometers >= 50000 then "dekat"
when kilometers between 50000 and 100000 then "sedang"
else "jauh"
end as jarak_tempuh,
count(*)
from car_info
group by jarak_tempuh

--jumlah tipe mobil--
select type,
count(*) as jumlah_tipe
from car_info
group by type
order by jumlah_tipe desc

--klasifikasi gearbox--
select gearbox,
count(*) as jumlah_gear
from car_info
group by gearbox
order by jumlah_gear

--bahan bakar--
select Fuel,
count(*) as jumlah_BBM
from car_info
group by Fuel
order by jumlah_BBM desc

--rataan cc by fuel--
select fuel,
ceil(avg(cc)) as rataan_cc
from car_info
group by fuel
order by rataan_cc desc

--most popularity color--
select color,
count(*) as jumlah_color
from car_info
group by color
order by jumlah_color desc

--average price by color--
select color,
ceil(avg(price)) as rataan_warna
from car_info
group by color
order by rataan_warna desc

--bandingkan jumlah mobil baru dan bekas--
select Status,
count(*) as jumlah_status
from car_info
group by Status
order by jumlah_status desc

--harga rataan baru/bekas--
select status,
ceil(avg(price)) as rataan_status
from car_info
group by status
order by rataan_status desc
