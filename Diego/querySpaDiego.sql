/*
	Segun el analisis de la data los servicios mas utilizados son
		1 - Yoga
		2 - Masaje
		3 - Sauna

	La combinacion de servicios mas utilizada es el Yoga + Masaje por el sexo 0, esta combinacion tambien es la mas usada por el sexo 1	
*/

select 
	count(1) as cantidad,
	sexo,
	Sauna,
	Masaje,
	Hidro,
	Yoga
from (
	select * from SpaCentro union
	select * from SpaEscalon  union
	select * from SpaSantaTecla 
)s
group by sexo,Sauna,Masaje,Hidro,Yoga
having Sauna = 1 or Masaje = 1 or Hidro = 1 or Yoga = 1
order by 1 desc








