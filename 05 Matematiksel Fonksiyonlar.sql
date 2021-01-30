/*
MATEMATÝKSEL FONKSÝYONLAR
Bu fonksiyonlar selelct satýrýnda yazýlýrlar.
*/
--Personellere ödenen toplam maaþ
select sum(Personel_Maas) as 'Toplam Maaþ'
from tbl_Personel
-- Ortalama ödenen maaþ
select avg(Personel_Maas) as 'Ortalama Ödenen Maaaþ'
from tbl_Personel
--Maximim verilen maaþ
select max(Personel_Maas)
from tbl_Personel
--Minimum verilen maaþ
select min(Personel_Maas)
from tbl_Personel
--Tablodaki kayýt sayýsý nedir
select count(*)
from tbl_Personel

