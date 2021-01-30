-- SIRALAMA: order by
--Personelleri maaþlarýna göre azalan sýralayýnýz.
select Personel_Adi,Personel_Maas
from tbl_Personel
order by Personel_Maas desc

--En yüksek maaþý alan 3 personel
select Top(3) Personel_Adi,Personel_Maas
from tbl_Personel
order by Personel_Maas desc

