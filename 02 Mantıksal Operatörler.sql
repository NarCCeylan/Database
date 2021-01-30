/*
MANTIKSAL OPERATÖRLER
<
>
=
<=
>=
or
and
between
not
!=	
*/
--SORU: Id si 1 ve 5 olan kayýtlar
select Personel_Adi,Personel_Soyadi
from tbl_Personel
where Personel_Id=1 or Personel_Id=5 
--SORU: 3. bölümde çalýþan bayanlar
Use Sirket12Tb
go
select Personel_Adi, Personel_Soyadi
from tbl_Personel
where Bolum_No=3 and Personel_Cinsiyet='false'
--SORU: Maaþý 1500 TL den fazla olanlar
select *
from tbl_Personel
Where Personel_Maas>1500

select * from tbl_Personel
--SORU:Maaþý 1000 ile 1700 arasýnda olanlar
select * 
from tbl_Personel
where Personel_Maas between 1000 and 1700

select * 
from tbl_Personel
where Personel_Maas >=1000 and Personel_Maas<=1700
--SORU: Patron Kimdir?
select *
from tbl_Personel
where Personel_Id=Yonetici_No
--SORU: Kategoriler nelerdir
select Kategori_Adi
from Table_1
where Kategori_No =1
