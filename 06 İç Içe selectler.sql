-- Yeliz Demirin �al��t��� b�l�m hangisidir.
select Bolum_Adi
from tbl_Bolum
where Bolum_Id=(select Bolum_No
				from tbl_Personel
				where Personel_Adi='Yeliz' and Personel_Soyadi='Demir')
--Pazarlama b�l�m�nde �al��an personeller


select Personel_Adi
from tbl_Personel
where Bolum_No	=(select Bolum_Id
				from tbl_Bolum
				where Bolum_Adi='Pazarlama')
-- Aysunun y�neticisi kimdir.
select Personel_Adi
from tbl_Personel
where Personel_Id=(select Yonetici_No
					from tbl_Personel
					where Personel_Adi='Aysun')
--SORU: M�d�rler kimlerdir.
select Personel_Adi
from tbl_Personel
where Yonetici_No=(select Personel_Id
					from tbl_Personel
					where Personel_Id=Yonetici_No)and Personel_Id!=Yonetici_No
