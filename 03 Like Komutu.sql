/* LIKE Komutu
Kay�tlar i�erisinde text yada karekter arayan komuttur.
 _ ve % parametreli vard�r.
*/
--SORU: Ad� i�erisinde emre kelimesi olan kay�tlar
select *
from tbl_Personel
where Personel_Adi like '%emre%'

--SORU: Avc�larda oturan ve maa�� 1000 Tl den fazla olan personeller.
select *
from tbl_Personel
where Personel_Adres like '%avc�lar%' and
      Personel_Maas >=1000
--SORU: �stanbul avrupa yakas�nda oturanlar
select *
from tbl_Personel
where Personel_Tel like '0212%'
--SORU: Ad�n�n ikinci karekteri a soyad�n�n ���nc� karakteri b olan ve
-- tarihi 1993 olan
select * 
from tbl_Personel
where Personel_Adi like '_a%' and
      Personel_Soyadi like '%b__' and
      Personel_DTarihi like '%1993%'