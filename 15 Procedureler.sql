/*
Kullan�c� Tan�ml� Sakl� Prosed�rler (Stored Procedure)
1) Procedureler tablolar gibi kay�tl� ortamlard�rlar.
2) Procedure ifadesiyle bildirilirler.
3) Her procedurenin bir procedure ad� olmak zorundad�r.
4) Procedurler C# taki metotlar�n g�revlerine benzer g�rev �stlenirler.
5) Procedureler parametre al�p almamakta serbesttirler.
6) Parametre alacaklarsa parametre listesi procedure ad�ndan sonra 
   ( ) i�ersinde yaz�l�rlar.
7) Parametre tan�mlar�nda de�i�ken tan�mlama kurallar� ge�erlidir.(Declare hari�)
8) Procedurlerin sorunsuz �al��mas� i�in parametre listesinden sonra "as" ifadesi
   kullan�l�r.
9) procedureden beklenen i� her ne ise As ifadesinden sonra  yaz�l�r. 
10)Procedureler ilk defa veritaban�na kaydedilecese create komutu kullan�l�r.
11)Kay�tl� Procedure �zerinde de�i�iklik yap�lacaksa Alter komutu kullan�l�r.
12)Procedure gibi kay�tl� nesneler Drop komutu ile silinir.
13)Procedureler metotlar gibi geriye de�er d�nd�rebilir.
14)Procedureler usp_Prosed�rAdi team�l�ne g�re yaz�lacak 
15)Procedurelerin kay�tl� ortam haline gelmesi i�in mutlaka bir kez execute edilmelidir.
16)Create olu�turukmu� bir procedure ikinci kere ayn� isimle kaydedilemez.
Kullan�m:

1) create procedure Prosed�rAdi 
   as
   Yap�lcak ��ler
2) create procedure ProcedureAdi 
  (
    @parametre1 verit�r�,
	@parametre2 verit�r�,
    @parametre3 verit�r�,
.....
.....
  )
as
Yap�lcak ��ler
   
*/
--SORU: B�l�m tablosuna yeni bir b�l�m ekleyen procedure
create procedure usp_BolumEkle
(
@Adi nvarchar(50)
)
as
insert into tbl_Bolum(Bolum_Adi)
			values(@Adi)


--SORU: Bili�im b�l�m�n� Bili�im Teknolojileri �eklinde 
--      de�i�tiren procedure
create proc usp_BolumGuncelle 'Bili�im','Bili�im Teknolojileri'
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

--SORU: Bo� olan kay�tlar� silen procedure. E�er Silinecek kay�t
--yoksa Kay�t bulunamad� �eklinde mesaj verilecek.
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
    raiserror('Kay�t Bulunamad�',16,5)
  end

