/* TEMEL ��LEMLER
VER� EKLEME
insert into TabloAdi(s�tun1,s�tun2....)
			values  (de�er1,de�er2....)
NOT: s�tunlar�n s�ras� ve tipleri ne ise girilecek olan verilerin 
     s�ras� ve tipleri de ayn� olmal�d�r.

*/
-- bolum tablosuna Sat�� ad�nda yeni bir kay�t ekleyiniz.
insert into tbl_Bolum(Bolum_Adi)
			values('Sat��')
/*
VER� S�LME
delete from TabloAdi
where  kriter

*/
delete from tbl_Bolum
where Bolum_Adi='Sat��'
--�nsan Kaynaklar� b�l�m�n� siliniz

delete from tbl_Bolum
where Bolum_Id=4
select * from tbl_Personel
where Bolum_No=4