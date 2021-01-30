--Yorum satýrý
/*sdfsdfsd
dsfsd
sdfsdf
Bþrden fazla yorum satýrý
dsffsdfsdfsdf*/

--SEÇME SORGULARI
/*
SELECT neyi yada neleri (sütun adlarý)
from tablo adý 
*/
--SORU: Personelleri listeleyen sorgu
select * 
from tbl_Personel
--SORU: Personellerin Id ad ve soyadlarý
select Personel_Id,Personel_Adi,Personel_Soyadi
from tbl_Personel
--SORU: Personellerin ad soyad maaþ bilgileri
select Personel_Adi as ADI,Personel_Soyadi AS SOYADI,Personel_Maas  AS MAAÞ
from tbl_Personel
-- ÞARTLI SORGULAR
/*
SELECT *
from tablo
where þart
*/
--SORU: erkek olan personellerin ad soyad ve adresleri
select Personel_Adi,Personel_Soyadi,Personel_Adres
from dbo.tbl_Personel
where Personel_Cinsiyet=1 
--SORU: 2. bölümde çalýþan personeller
select *
from tbl_Personel
where Bolum_No=2