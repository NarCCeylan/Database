-- Maaşı ortalama maaştan yüksek olan kayıtlar arasından 
-- rasgele 3 personel
select Top(3) Personel_Adi,Personel_Maas
from tbl_Personel
where Personel_Maas>(select avg(Personel_Maas) from tbl_Personel)
order by newid()
--ÖDEV: Patron şirkette toplantı yapmak istiyor. Her bölümden 
--rasgele 1 kişi toplantıya katılacaktır. Ancak personeli olmayan,
--bölümler listelemeye dahil olamayacaktır.Buna göre toplantıya katılacakları listeleyin

--SORU: Personel Sayısı en fazla olan iki bölümü personel
--sayıları ile birlikte left join kullanarak listeleyiniz.
select Top(2) Bolum_Adi,count(*) as Sayı
from tbl_Personel left join tbl_Bolum
on Bolum_Id=Bolum_No
group by Bolum_Adi
order by count(*) desc
--SORU: Personel sayısı 3 yada daha fazla olan 3 adet bölümü left join ie azalan sıralama 
--şeklinde listeleyiniz.
select Top (3) Bolum_Adi,count(*) as Sayı
from tbl_Personel left join tbl_Bolum
on Bolum_Id=Bolum_No
group by Bolum_Adi
having count(*)>=3
order by count (*) desc


