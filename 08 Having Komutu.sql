--Bölümlerde çalýþan personel sayýsý 3 ten fazla 
--olan bölümler ve sayýlarý
select Bolum_Adi,count(Personel_Id) as Sayý
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No
group by Bolum_Adi
having count(Personel_Id)>3
