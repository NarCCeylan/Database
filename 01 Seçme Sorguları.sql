--Yorum sat�r�
/*sdfsdfsd
dsfsd
sdfsdf
B�rden fazla yorum sat�r�
dsffsdfsdfsdf*/

--SE�ME SORGULARI
/*
SELECT neyi yada neleri (s�tun adlar�)
from tablo ad� 
*/
--SORU: Personelleri listeleyen sorgu
select * 
from tbl_Personel
--SORU: Personellerin Id ad ve soyadlar�
select Personel_Id,Personel_Adi,Personel_Soyadi
from tbl_Personel
--SORU: Personellerin ad soyad maa� bilgileri
select Personel_Adi as ADI,Personel_Soyadi AS SOYADI,Personel_Maas  AS MAA�
from tbl_Personel
-- �ARTLI SORGULAR
/*
SELECT *
from tablo
where �art
*/
--SORU: erkek olan personellerin ad soyad ve adresleri
select Personel_Adi,Personel_Soyadi,Personel_Adres
from dbo.tbl_Personel
where Personel_Cinsiyet=1 
--SORU: 2. b�l�mde �al��an personeller
select *
from tbl_Personel
where Bolum_No=2