-- Maa�� ortalama maa�tan y�ksek olan kay�tlar aras�ndan 
-- rasgele 3 personel
select Top(3) Personel_Adi,Personel_Maas
from tbl_Personel
where Personel_Maas>(select avg(Personel_Maas) from tbl_Personel)
order by newid()
--�DEV: Patron �irkette toplant� yapmak istiyor. Her b�l�mden 
--rasgele 1 ki�i toplant�ya kat�lacakt�r. Ancak personeli olmayan,
--b�l�mler listelemeye dahil olamayacakt�r.Buna g�re toplant�ya kat�lacaklar� listeleyin

--SORU: Personel Say�s� en fazla olan iki b�l�m� personel
--say�lar� ile birlikte left join kullanarak listeleyiniz.
select Top(2) Bolum_Adi,count(*) as Say�
from tbl_Personel left join tbl_Bolum
on Bolum_Id=Bolum_No
group by Bolum_Adi
order by count(*) desc
--SORU: Personel say�s� 3 yada daha fazla olan 3 adet b�l�m� left join ie azalan s�ralama 
--�eklinde listeleyiniz.
select Top (3) Bolum_Adi,count(*) as Say�
from tbl_Personel left join tbl_Bolum
on Bolum_Id=Bolum_No
group by Bolum_Adi
having count(*)>=3
order by count (*) desc


