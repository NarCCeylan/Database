/* TEMEL ÝÞLEMLER
VERÝ EKLEME
insert into TabloAdi(sütun1,sütun2....)
			values  (deðer1,deðer2....)
NOT: sütunlarýn sýrasý ve tipleri ne ise girilecek olan verilerin 
     sýrasý ve tipleri de ayný olmalýdýr.

*/
-- bolum tablosuna Satýþ adýnda yeni bir kayýt ekleyiniz.
insert into tbl_Bolum(Bolum_Adi)
			values('Satýþ')
/*
VERÝ SÝLME
delete from TabloAdi
where  kriter

*/
delete from tbl_Bolum
where Bolum_Adi='Satýþ'
--Ýnsan Kaynaklarý bölümünü siliniz

delete from tbl_Bolum
where Bolum_Id=4
select * from tbl_Personel
where Bolum_No=4