/*
Kullanýcý Tanýmlý Saklý Prosedürler (Stored Procedure)
1) Procedureler tablolar gibi kayýtlý ortamlardýrlar.
2) Procedure ifadesiyle bildirilirler.
3) Her procedurenin bir procedure adý olmak zorundadýr.
4) Procedurler C# taki metotlarýn görevlerine benzer görev üstlenirler.
5) Procedureler parametre alýp almamakta serbesttirler.
6) Parametre alacaklarsa parametre listesi procedure adýndan sonra 
   ( ) içersinde yazýlýrlar.
7) Parametre tanýmlarýnda deðiþken tanýmlama kurallarý geçerlidir.(Declare hariç)
8) Procedurlerin sorunsuz çalýþmasý için parametre listesinden sonra "as" ifadesi
   kullanýlýr.
9) procedureden beklenen iþ her ne ise As ifadesinden sonra  yazýlýr. 
10)Procedureler ilk defa veritabanýna kaydedilecese create komutu kullanýlýr.
11)Kayýtlý Procedure üzerinde deðiþiklik yapýlacaksa Alter komutu kullanýlýr.
12)Procedure gibi kayýtlý nesneler Drop komutu ile silinir.
13)Procedureler metotlar gibi geriye deðer döndürebilir.
14)Procedureler usp_ProsedürAdi teamülüne göre yazýlacak 
15)Procedurelerin kayýtlý ortam haline gelmesi için mutlaka bir kez execute edilmelidir.
16)Create oluþturukmuþ bir procedure ikinci kere ayný isimle kaydedilemez.
Kullaným:

1) create procedure ProsedürAdi 
   as
   Yapýlcak Ýþler
2) create procedure ProcedureAdi 
  (
    @parametre1 veritürü,
	@parametre2 veritürü,
    @parametre3 veritürü,
.....
.....
  )
as
Yapýlcak Ýþler
   
*/
--SORU: Bölüm tablosuna yeni bir bölüm ekleyen procedure
create procedure usp_BolumEkle
(
@Adi nvarchar(50)
)
as
insert into tbl_Bolum(Bolum_Adi)
			values(@Adi)


--SORU: Biliþim bölümünü Biliþim Teknolojileri þeklinde 
--      deðiþtiren procedure
create proc usp_BolumGuncelle 'Biliþim','Biliþim Teknolojileri'
(
@Adi nvarchar(50),
@YAdi nvarchar(50)
)
as
declare @id int
set @id=(select Bolum_Id
		 from tbl_Bolum
		 Where Bolum_Adi=@Adi)

update tbl_Bolum
set Bolum_Adi=@YAdi
where Bolum_Id=@id

--SORU: Boþ olan kayýtlarý silen procedure. Eðer Silinecek kayýt
--yoksa Kayýt bulunamadý þeklinde mesaj verilecek.
alter proc usp_BolumSil 'Arge'
(
@Adi nvarchar(50)
)
as
declare @sayi int
set @sayi=(select count(*)
			from tbl_Bolum
			where Bolum_Adi=@Adi)
if @sayi>0
 begin
   delete from tbl_Bolum
   where Bolum_Adi=@Adi
 end
else
  begin
    raiserror('Kayýt Bulunamadý',16,5)
  end

