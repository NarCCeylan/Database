/*B�RLE�T�RME ESASLARI
Ama�: Farkl� tablolar kulanarak vferi listelemek
*/
--1) E�iti Olan Birle�tirme:
select Bolum_Adi, Personel_Adi
from tbl_Bolum,tbl_Personel
where Bolum_Id=Bolum_No
--2) D�� Birle�tirme (left join, right join)
select Bolum_adi,Personel_Adi
from  tbl_Bolum   right join tbl_Personel
on Bolum_Id=Bolum_No
--NOT: Joinlerde where yerine on komutu kullan�l�r
-- ��erisinde personeli olmayan b�l�mler.
select Bolum_adi,Personel_Adi
from  tbl_Bolum   left join tbl_Personel
on Bolum_Id=Bolum_No
where Personel_Adi is null
-- birle�tirme on ile yap�ld�ktan sonra istenilirse where ile
-- kriter uygulanabilir.
/* 3)KEND�NE E�LE�T�RME
Bu e�le�tirmede tablolar� temsil edecek takma adlar kullan�l�r.
-- Yelizin Y�neticisi kimdir?
*/
--I.YOL i� i�e,
select Personel_Adi,Personel_Soyadi
from tbl_Personel
where Personel_Id in (select Yonetici_No
					from tbl_Personel
					where Personel_Adi='yeliz')

select y.Personel_Adi as PERSONEL,p.Personel_Adi as Y�NET�C�
from tbl_Personel y ,tbl_Personel p
where y.Yonetici_No=p.Personel_Id and y.Personel_Adi='koray'

