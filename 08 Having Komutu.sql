--B�l�mlerde �al��an personel say�s� 3 ten fazla 
--olan b�l�mler ve say�lar�
select Bolum_Adi,count(Personel_Id) as Say�
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No
group by Bolum_Adi
having count(Personel_Id)>3
