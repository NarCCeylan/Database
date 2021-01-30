/*
Views (G�r�n�mler)
1)Viewler tablolar�n g�r�n�mleridirler. 
2)Viewler tablolar hesab�na veri �ekip listeleyebilirler.
3)Viewler veri tutmazlar.
4)Viewler arac�l��� ile tablolar �zerinde kay�t ekleme,silme,g�nceleme
  i�lenmleri yap�lablir.
5)Viewler tablolar gibi kay�tl� ortamlard�r.

*/
--B�l�mlerde �al��an personeller
select Bolum_Adi,Personel_Adi
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No

select Bolum_Adi,Personel_Adi
from dbo.View_BolumPersonel
--Bolumlerde �al��an personel say�s�
select Top(3) Bolum_Adi,count(*) as Say�
from dbo.View_BolumPersonel
group by Bolum_Adi
having count(*)>=3
order by count(*) desc


select *
from dbo.View_BolumPersonelSayisi