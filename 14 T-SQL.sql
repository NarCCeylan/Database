/*
T-SQL : Transact SQL -- yapýsal sorgulama
DML (Data Manupulation Language) select, group by, having ,sum vb..
DML nin yetersiz olduðu zaman TSQL kullanýlýr.
1) deðiþken tanýmlamalarý
2) deðer atamalarý
3) karar yapýlarý
4) döngü ifadleri
5) cursor yapýlarý

*/
/*
1) Deðiþken Tanýmalamlarý:
a) Deðiþkenkler declare ifadesi ile bildirilirler
b) Her deðiþken bir deðiþken adý vardýr.
c) Her deðiþkenin veri türü olmalýdýr. Bu veri türü
   deðiþkenin temsil edeceði tablodaki alanda bulunan verinin türü
   ile ayný olmalýdýr.
d) Deðiþkenler tanýmlanýrken deðiþken adlarýnýn 
   önüne @ karekteri konulur.

Kullanýmý:
declare @deðiþkenAdi veritürü

2) Deðer Atamalarý
   Deðiþkenlere deðerler set ifadesi ile atanýr.

*/
declare @a int
declare @b nvarchar(50)
declare @c bit
declare @para money
declare @para2 decimal(18,2)

set @a=10
set @b='hasan'
set @c=1
set @para=175

print @a
print 'b nin deðeri='+@b
print 'Para Miktarý='+ cast(@para as nvarchar(50))
/*
3) KARAR YAPILARI
if þart
begin
  Þart doðru ise icra görecek kodlar  
end
else
begin
  Þart doðru deðiþlse icra görecek kodlar
End
*/
declare @s1 int ,@s2 int
set @s1=100
set @s2=100
if @s1>@s2
	begin
	 print 'S1 büyüktür'
	end
else if @s1=@s2
	begin
	 print 'Sayýlar eþit'
	end
else
	begin
	 print 'S2 büyüktür'
	end
/*
4) Döngüler
while þart
	begin
	  Þartýn doðru olduðu durumlarda icra görecek kodlar
	End
*/
--1 den 100 kadar olan sayýlardan 5e bölünebilen
-- 6 ya bölünemiyen sayýlar
declare @i int
set @i=1
while @i<=100
	begin
	  if @i % 5=0 and @i % 6!=0
		begin
			print @i
		end
	set @i=@i+1

	end
-- ÖDEV:Þirket db dikkate alýnarak Personellere ödenen ortalama maaþýn altýnda
-- maaþ alan personellerin maaþlarýný %25, ortalamanýn üstünde 
-- olanlara %10 zam yapan ve tabloyu güncelleyen sorguyu yazýnýz
