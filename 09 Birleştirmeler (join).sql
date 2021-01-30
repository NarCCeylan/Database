/*BÝRLEÞTÝRME ESASLARI
Amaç: Farklý tablolar kulanarak vferi listelemek
*/
--1) Eþiti Olan Birleþtirme:
select Bolum_Adi, Personel_Adi
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No
--2) Dýþ Birleþtirme (left join, right join)
select Bolum_adi,Personel_Adi
from  tbl_Bolum   right join tbl_Personel
on Bolum_Id=Bolum_No
--NOT: Joinlerde where yerine on komutu kullanýlýr
-- Ýçerisinde personeli olmayan bölümler.
select Bolum_adi,Personel_Adi
from  tbl_Bolum   left join tbl_Personel
on Bolum_Id=Bolum_No
where Personel_Adi is null
-- birleþtirme on ile yapýldýktan sonra istenilirse where ile
-- kriter uygulanabilir.
/* 3)KENDÝNE EÞLEÞTÝRME
Bu eþleþtirmede tablolarý temsil edecek takma adlar kullanýlýr.
-- Yelizin Yöneticisi kimdir?
*/
--I.YOL iç içe,
select Personel_Adi,Personel_Soyadi
from tbl_Personel
where Personel_Id in (select Yonetici_No
					from tbl_Personel
					where Personel_Adi='yeliz')

select y.Personel_Adi as PERSONEL,p.Personel_Adi as YÖNETÝCÝ
from tbl_Personel y ,tbl_Personel p
where y.Yonetici_No=p.Personel_Id and y.Personel_Adi='koray'

