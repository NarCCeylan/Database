/*
MATEMAT�KSEL FONKS�YONLAR
Bu fonksiyonlar selelct sat�r�nda yaz�l�rlar.
*/
--Personellere �denen toplam maa�
select sum(Personel_Maas) as 'Toplam Maa�'
from tbl_Personel
-- Ortalama �denen maa�
select avg(Personel_Maas) as 'Ortalama �denen Maaa�'
from tbl_Personel
--Maximim verilen maa�
select max(Personel_Maas)
from tbl_Personel
--Minimum verilen maa�
select min(Personel_Maas)
from tbl_Personel
--Tablodaki kay�t say�s� nedir
select count(*)
from tbl_Personel

