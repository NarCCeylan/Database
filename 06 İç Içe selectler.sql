-- Yeliz Demirin çalýþtýðý bölüm hangisidir.
select Bolum_Adi
from tbl_Bolum
where Bolum_Id=(select Bolum_No
				from tbl_Personel
				where Personel_Adi='Yeliz' and Personel_Soyadi='Demir')
--Pazarlama bölümünde çalýþan personeller


select Personel_Adi
from tbl_Personel
where Bolum_No	=(select Bolum_Id
				from tbl_Bolum
				where Bolum_Adi='Pazarlama')
-- Aysunun yöneticisi kimdir.
select Personel_Adi
from tbl_Personel
where Personel_Id=(select Yonetici_No
					from tbl_Personel
					where Personel_Adi='Aysun')
--SORU: Müdürler kimlerdir.
select Personel_Adi
from tbl_Personel
where Yonetici_No=(select Personel_Id
					from tbl_Personel
					where Personel_Id=Yonetici_No)and Personel_Id!=Yonetici_No
