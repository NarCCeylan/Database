-- SIRALAMA: order by
--Personelleri maa�lar�na g�re azalan s�ralay�n�z.
select Personel_Adi,Personel_Maas
from tbl_Personel
order by Personel_Maas desc

--En y�ksek maa�� alan 3 personel
select Top(3) Personel_Adi,Personel_Maas
from tbl_Personel
order by Personel_Maas desc

