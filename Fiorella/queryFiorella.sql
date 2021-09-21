/*
	Los productos mas vendidos en los 3 departamentos son:
		1-Liston	975
		2-Rosas		945
		3-Globos	892
		4-Aurora	804

	Las combinaciones mas vendidas son:
		1-Rosas y liston	692
		2-Rosas y globos	613
		3-Aurora y liston	509
*/
select 
	sum(Rosas) Rosas,
	sum(Claveles) Claveles,
	sum(Macetas) Macetas,
	sum(Tierra) Tierra,
	sum(Girasoles) Girasoles,
	sum(Hortensia) Hortensia,
	sum(Globos) Globos,
	sum(Tarjetas) Tarjetas,
	sum(fOrquídias) fOrquídias,
	sum(Carmesí) Carmesí,
	sum(Lirios) Lirios,
	sum(Aurora) Aurora,
	sum(Tulipanes) Tulipanes,
	sum(Listón) Listón
from(
	select * from SanMiguel union
	select * from SanSalvador union
	select * from SantaAna
)s

select 
	sum(iif(Rosas = 1 and Claveles = 1,1,0)) RC,
	sum(iif(Rosas = 1 and Macetas = 1,1,0)) RM,
	sum(iif(Rosas = 1 and Tierra = 1,1,0)) RTierra,
	sum(iif(Rosas = 1 and Girasoles = 1,1,0)) RG,
	sum(iif(Rosas = 1 and Hortensia = 1,1,0)) RH,
	sum(iif(Rosas = 1 and Globos = 1,1,0)) RGlobos,
	sum(iif(Rosas = 1 and Tarjetas = 1,1,0)) RT,
	sum(iif(Rosas = 1 and fOrquídias = 1,1,0)) RO,
	sum(iif(Rosas = 1 and Carmesí = 1,1,0)) RCarmesí,
	sum(iif(Rosas = 1 and Lirios = 1,1,0)) RLi,
	sum(iif(Rosas = 1 and Aurora = 1,1,0)) RA,
	sum(iif(Rosas = 1 and Tulipanes = 1,1,0)) RT,
	sum(iif(Rosas = 1 and Listón = 1,1,0)) RL
from(
	select * from SanMiguel union
	select * from SanSalvador union
	select * from SantaAna
)s

select 	
	sum(iif(Aurora = 1 and Listón = 1,1,0)) AL
from(
	select * from SanMiguel union
	select * from SanSalvador union
	select * from SantaAna
)s





--San Miguel
/*
	Los productos mas vendidos en San Miguel son:
		1-Aurora	160
		2-Lirios	160
		3-Carmesi	158
		4-Orquidias	158

	Las combinaciones mas vendidas son:
		1-Rosas y Aurora		90
		2-Aurora y Orquidias	88
		3-Orquidias y Carmesi	88
*/

select 
	sum(Rosas) Rosas,
	sum(Claveles) Claveles,
	sum(Macetas) Macetas,
	sum(Tierra) Tierra,
	sum(Girasoles) Girasoles,
	sum(Hortensia) Hortensia,
	sum(Globos) Globos,
	sum(Tarjetas) Tarjetas,
	sum(fOrquídias) fOrquídias,
	sum(Carmesí) Carmesí,
	sum(Lirios) Lirios,
	sum(Aurora) Aurora,
	sum(Tulipanes) Tulipanes,
	sum(Listón) Listón
from SanMiguel 

select 		
	sum(iif(Rosas = 1 and Aurora = 1,1,0)) RA,	
	sum(iif(Aurora = 1 and fOrquídias = 1,1,0)) AO,
	sum(iif(fOrquídias = 1 and Carmesí = 1,1,0)) OC
from SanMiguel

--San Salvador
/*
	Los productos mas vendidos en San Miguel son:
		1-Liston	690
		2-Rosas		612
		3-Globos	587

	Las combinaciones mas vendidas son:
		1-Rosas y Liston	560
		2-Liston y Globos	540
		2-Rosas y Globos	483
*/

select 
	sum(Rosas) Rosas,
	sum(Claveles) Claveles,
	sum(Macetas) Macetas,
	sum(Tierra) Tierra,
	sum(Girasoles) Girasoles,
	sum(Hortensia) Hortensia,
	sum(Globos) Globos,
	sum(Tarjetas) Tarjetas,
	sum(fOrquídias) fOrquídias,
	sum(Carmesí) Carmesí,
	sum(Lirios) Lirios,
	sum(Aurora) Aurora,
	sum(Tulipanes) Tulipanes,
	sum(Listón) Listón
from SanSalvador 

select 	
	sum(iif(Listón = 1 and Globos = 1,1,0)) LGlobos,
	sum(iif(Rosas = 1 and Globos = 1,1,0)) RGlobos,
	sum(iif(Rosas = 1 and Listón = 1,1,0)) RL
from SanSalvador

--Santa Ana
/*
	Los productos mas vendidos en San Miguel son:
		1-Lirios		270
		2-Girasoles		266
		3-Aurora		260

	Las combinaciones mas vendidas son:
		1-Aurora y Tarjetas		145
		2-Girasoles y Tarjetas	143
		3-Girasoles y Orquidias	144
*/
select 
	sum(Rosas) Rosas,
	sum(Claveles) Claveles,
	sum(Macetas) Macetas,
	sum(Tierra) Tierra,
	sum(Girasoles) Girasoles,
	sum(Hortensia) Hortensia,
	sum(Globos) Globos,
	sum(Tarjetas) Tarjetas,
	sum(fOrquídias) fOrquídias,
	sum(Carmesí) Carmesí,
	sum(Lirios) Lirios,
	sum(Aurora) Aurora,
	sum(Tulipanes) Tulipanes,
	sum(Listón) Listón
from SantaAna 

--Santa Ana
select 	
	sum(iif(Aurora = 1 and Tarjetas = 1,1,0)) [AT],
	sum(iif(Girasoles = 1 and Tarjetas = 1,1,0)) GT,
	sum(iif(Girasoles = 1 and fOrquídias = 1,1,0)) [GO]
from SantaAna