/*
Views (Görünümler)
1)Viewler tablolarýn görünümleridirler. 
2)Viewler tablolar hesabýna veri çekip listeleyebilirler.
3)Viewler veri tutmazlar.
4)Viewler aracýlýðý ile tablolar üzerinde kayýt ekleme,silme,günceleme
  iþlenmleri yapýlablir.
5)Viewler tablolar gibi kayýtlý ortamlardýr.

*/
--Bölümlerde çalýþan personeller
select Bolum_Adi,Personel_Adi
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No

select Bolum_Adi,Personel_Adi
from dbo.View_BolumPersonel
--Bolumlerde çalýþan personel sayýsý
select Top(3) Bolum_Adi,count(*) as Sayý
from dbo.View_BolumPersonel
group by Bolum_Adi
having count(*)>=3
order by count(*) desc


select *
from dbo.View_BolumPersonelSayisi