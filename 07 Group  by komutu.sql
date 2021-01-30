--Bölümlerde çalýþan personeller
select Personel_Adi,Bolum_Adi
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No

--Bölümlerde çalýþan personel sayýlarý

select Bolum_Adi as BÖLÜMLER,count(Personel_Adi) as 'Çalýþan Sayýsý'
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No
group by Bolum_Adi

--Personellerin müdürleri kimlerdir.

select distinct p.Personel_Adi as Personel,y.Personel_Adi as Yönetici
from tbl_Personel p,tbl_Personel y
where p.Personel_Id=y.Yonetici_No

--En yüksek maaþý alan personel

select Personel_Adi,Personel_Maas
from tbl_Personel
where Personel_Maas=(select max(Personel_Maas) from tbl_Personel)

--Ortalama maaþýn altýnda maaþ alanlar

select Personel_Adi,Personel_Maas
from tbl_Personel
where Personel_Maas<(select avg(Personel_Maas)as Ort from tbl_Personel)