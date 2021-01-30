/*
T-SQL : Transact SQL -- yap�sal sorgulama
DML (Data Manupulation Language) select, group by, having ,sum vb..
DML nin yetersiz oldu�u zaman TSQL kullan�l�r.
1) de�i�ken tan�mlamalar�
2) de�er atamalar�
3) karar yap�lar�
4) d�ng� ifadleri
5) cursor yap�lar�

*/
/*
1) De�i�ken Tan�malamlar�:
a) De�i�kenkler declare ifadesi ile bildirilirler
b) Her de�i�ken bir de�i�ken ad� vard�r.
c) Her de�i�kenin veri t�r� olmal�d�r. Bu veri t�r�
   de�i�kenin temsil edece�i tablodaki alanda bulunan verinin t�r�
   ile ayn� olmal�d�r.
d) De�i�kenler tan�mlan�rken de�i�ken adlar�n�n 
   �n�ne @ karekteri konulur.

Kullan�m�:
declare @de�i�kenAdi verit�r�

2) De�er Atamalar�
   De�i�kenlere de�erler set ifadesi ile atan�r.

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
print 'b nin de�eri='+@b
print 'Para Miktar�='+ cast(@para as nvarchar(50))
/*
3) KARAR YAPILARI
if �art
begin
  �art do�ru ise icra g�recek kodlar  
end
else
begin
  �art do�ru de�i�lse icra g�recek kodlar
End
*/
declare @s1 int ,@s2 int
set @s1=100
set @s2=100
if @s1>@s2
	begin
	 print 'S1 b�y�kt�r'
	end
else if @s1=@s2
	begin
	 print 'Say�lar e�it'
	end
else
	begin
	 print 'S2 b�y�kt�r'
	end
/*
4) D�ng�ler
while �art
	begin
	  �art�n do�ru oldu�u durumlarda icra g�recek kodlar
	End
*/
--1 den 100 kadar olan say�lardan 5e b�l�nebilen
-- 6 ya b�l�nemiyen say�lar
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
-- �DEV:�irket db dikkate al�narak Personellere �denen ortalama maa��n alt�nda
-- maa� alan personellerin maa�lar�n� %25, ortalaman�n �st�nde 
-- olanlara %10 zam yapan ve tabloyu g�ncelleyen sorguyu yaz�n�z
