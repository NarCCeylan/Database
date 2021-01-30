--B�l�mlerde �al��an personeller
select Personel_Adi,Bolum_Adi
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No

--B�l�mlerde �al��an personel say�lar�

select Bolum_Adi as B�L�MLER,count(Personel_Adi) as '�al��an Say�s�'
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No
group by Bolum_Adi

--Personellerin m�d�rleri kimlerdir.

select distinct p.Personel_Adi as Personel,y.Personel_Adi as Y�netici
from tbl_Personel p,tbl_Personel y
where p.Personel_Id=y.Yonetici_No

--En y�ksek maa�� alan personel

select Personel_Adi,Personel_Maas
from tbl_Personel
where Personel_Maas=(select max(Personel_Maas) from tbl_Personel)

--Ortalama maa��n alt�nda maa� alanlar

select Personel_Adi,Personel_Maas
from tbl_Personel
where Personel_Maas<(select avg(Personel_Maas)as Ort from tbl_Personel)