/* LIKE Komutu
Kayýtlar içerisinde text yada karekter arayan komuttur.
 _ ve % parametreli vardýr.
*/
--SORU: Adý içerisinde emre kelimesi olan kayýtlar
select *
from tbl_Personel
where Personel_Adi like '%emre%'

--SORU: Avcýlarda oturan ve maaþý 1000 Tl den fazla olan personeller.
select *
from tbl_Personel
where Personel_Adres like '%avcýlar%' and
      Personel_Maas >=1000
--SORU: Ýstanbul avrupa yakasýnda oturanlar
select *
from tbl_Personel
where Personel_Tel like '0212%'
--SORU: Adýnýn ikinci karekteri a soyadýnýn üçüncü karakteri b olan ve
-- tarihi 1993 olan
select * 
from tbl_Personel
where Personel_Adi like '_a%' and
      Personel_Soyadi like '%b__' and
      Personel_DTarihi like '%1993%'