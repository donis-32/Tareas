select * from `health_services` where date(`date_appointment`) = "2022-09-14" and `appointments`.`deleted_at` is null limit 50 offset 0
select * from `patients` where `patients`.`id` in (1352, 1833, 2757, 4232, 6314, 7142, 7270, 7336, 7647, 7694)
select * from `status` where `status`.`id` in (1, 6)
select * from `health_centers` where `health_centers`.`id` = 8 limit 1;
select * from `health_services` where `health_services`.`id` = 3 and `health_services`.`deleted_at` is null limit 1
select * from `appointments` where date(`date_appointment`) = "2022-09-14" and `appointments`.`deleted_at` is null limit 50 offset 0


select patients.gender, 
patients.genderrelationship, 
health_centers.name, 
health_services.name, 
appointments.date_appointment,
appointments.hour,
patients.dpi,
patients.names,
patients.last_name,
patients.cellphone,
patients.email,
patients.created_at,
appointments.id
from appointments
inner join patients on appointments.patient_id = patients.id 
inner join health_centers on appointments.health_center_id = health_centers.id
inner join health_services on appointments.health_service_id =health_services.id
where date(appointments.date_appointment) >= "2022-09-09" 
and patients.dpi = '2048582831011'
and appointments.deleted_at is null 
order by appointments.id desc

use casgt_citas4;
select 
count(patients.dpi),
patients.dpi
from appointments
inner join patients on appointments.patient_id = patients.id 
inner join health_centers on appointments.health_center_id = health_centers.id
inner join health_services on appointments.health_service_id =health_services.id
where date(appointments.date_appointment) >= "2022-09-09"   and date(appointments.created_at) > "2022-09-01"   
and appointments.deleted_at is null 
group by patients.dpi


 SELECT "silhouettes".* FROM "silhouettes" WHERE "silhouettes"."created_at" BETWEEN $1 AND $2  [["created_at", "2022-10-16 18:00:00"], ["created_at", "2022-10-17 06:00:00"]]                                           
 =>                                                                                                                      
[#<Silhouette:0x00007fd61f2074a0                                                                                           id: 1,                                                                                                                 
  name: "Yeezy Slide Onyx",                                                                                              
  description:                                                                                                           
   "THE YEEZY SLIDE FLAX FEATURES INJECTED EVA FOAM FOR LIGHWEIGHT DURABILITY, WHILE THE SOFT TOP LAYER IN THE FOOTBED OFFERS IMMEDIATE STEP IN COMFORT. THE OUTSOLE UTILIZES STRATEGICALLY MAPPED GROOVES FOR OPTIMAL COMFORT AND TRACTION",     
  price: nil,                                                                                                            
  created_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00,                                                            
  updated_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00>,                                                           
 #<Silhouette:0x00007fd61f2073d8                                         
  id: 2,                                                                 
  name: "Yeezy Slide Resin",                                             
  description:
   " The adidas Yeezy Slide Resin is made of Resin EVA foam throughout the design to provide lightweight durability. From there, a soft footbed offers an immediate step in comfort. An outsole with accentuated grooves for traction and support wraps the design. ",
  price: nil,
  created_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00,
  updated_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00>] 
2.7.2 :017 > 


2.7.2 :001 > Raffle.where(numero:"93").joins(:event)
  Raffle Load (44.3ms)  SELECT "raffles".* FROM "raffles" INNER JOIN "events" ON "events"."id" = "raffles"."event_id" WHERE "raffles"."numero" = $1  [["numero", 93]]   
 => ect doesnt su                                                                                                       [#<Raffle:0x00007fd61eb92318                   
  id: 3,                                                                                                                   dpi: 2993848388348494388,                    
  nombre: "j",xit                              
  apellido: "g",fl                             
  correo: "correo@algo.com",                   
  ig: "-", >                                   
  numero: 93,
  talla: 0.23e2,
  fecha: Fri, 15 Sep 2023 11:35:00.000000000 UTC +00:00,
  fechalanzamiento: nil,
  estilo: "",
  terminos: true,
  boletin: true,
  created_at: Mon, 17 Oct 2022 04:34:52.826009000 UTC +00:00,
  updated_at: Mon, 17 Oct 2022 04:34:52.826009000 UTC +00:00,
  event_id: 1>] 


  Silhouette.left_joins(:events).where.not(events:{id:nil})
  Silhouette Load (1.8ms)  SELECT "silhouettes".* FROM "silhouettes" LEFT OUTER JOIN "events" ON "events"."silhouette_id" = "silhouettes"."id" WHERE "events"."id" IS NOT NULL                                                            
 =>                                                                                                              
[#<Silhouette:0x00007fd61d880450                                                                                 
  id: 2,
  name: "Yeezy Slide Resin",
  description:
   " The adidas Yeezy Slide Resin is made of Resin EVA foam throughout the design to provide lightweight durability. From there, a soft footbed offers an immediate step in comfort. An outsole with accentuated grooves for traction and support wraps the design. ",
  price: nil,
  created_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00,
  updated_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00>,
 #<Silhouette:0x00007fd61d880310
  id: 1,
  name: "Yeezy Slide Onyx",
  description:
   "THE YEEZY SLIDE FLAX FEATURES INJECTED EVA FOAM FOR LIGHWEIGHT DURABILITY, WHILE THE SOFT TOP LAYER IN THE FOOTBED OFFERS IMMEDIATE STEP IN COMFORT. THE OUTSOLE UTILIZES STRATEGICALLY MAPPED GROOVES FOR OPTIMAL COMFORT AND TRACTION",
  price: nil,
  created_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00,
  updated_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00>] 
2.7.2 :011 > 


Comandos orm
Take/SELECT by indicator

Silhouette.take
  Silhouette Load (3.3ms)  SELECT "silhouettes".* FROM "silhouettes" LIMIT $1  [["LIMIT", 1]]
 =>                                                               
#<Silhouette:0x00007fd61e8ae048                                   
 id: 1,                                                           
 name: "Yeezy Slide Onyx",                                        
 description:                                                     
  "THE YEEZY SLIDE FLAX FEATURES INJECTED EVA FOAM FOR LIGHWEIGHT DURABILITY, WHILE THE SOFT TOP LAYER IN THE FOOTBED OFFERS IMMEDIATE STEP IN COMFORT. THE OUTSOLE UTILIZES STRATEGICALLY MAPPED GROOVES FOR OPTIMAL COMFORT AND TRACTION",
 price: nil,                                                      
 created_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00,      
 updated_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00>      
2.7.2 :012 > 

Time/FILTER datetime

 SELECT "silhouettes".* FROM "silhouettes" WHERE "silhouettes"."created_at" BETWEEN $1 AND $2  [["created_at", "2022-10-16 18:00:00"], ["created_at", "2022-10-17 06:00:00"]]                                           
 =>                                                                                                                      
[#<Silhouette:0x00007fd61f2074a0                                                                                           id: 1,                                                                                                                 
  name: "Yeezy Slide Onyx",                                                                                              
  description:                                                                                                           
   "THE YEEZY SLIDE FLAX FEATURES INJECTED EVA FOAM FOR LIGHWEIGHT DURABILITY, WHILE THE SOFT TOP LAYER IN THE FOOTBED OFFERS IMMEDIATE STEP IN COMFORT. THE OUTSOLE UTILIZES STRATEGICALLY MAPPED GROOVES FOR OPTIMAL COMFORT AND TRACTION",     
  price: nil,                                                                                                            
  created_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00,                                                            
  updated_at: Mon, 17 Oct 2022 00:03:54.535792000 UTC +00:00>,                                                           
 #<Silhouette:0x00007fd61f2073d8                                         
  id: 2,                                                                 
  name: "Yeezy Slide Resin",                                             
  description:
   " The adidas Yeezy Slide Resin is made of Resin EVA foam throughout the design to provide lightweight durability. From there, a soft footbed offers an immediate step in comfort. An outsole with accentuated grooves for traction and support wraps the design. ",
  price: nil,
  created_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00,
  updated_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00>] 
2.7.2 :017 > 

OFFSET/EXCLUDE

Silhouette.all.offset(1)
  Silhouette Load (0.9ms)  SELECT "silhouettes".* FROM "silhouettes" OFFSET $1  [["OFFSET", 1]]
 =>                                                                                  
[#<Silhouette:0x00007fd61f6cde30                                                     
  id: 2,                                                                             
  name: "Yeezy Slide Resin",                                                         
  description:                                                                       
   " The adidas Yeezy Slide Resin is made of Resin EVA foam throughout the design to provide lightweight durability. From there, a soft footbed offers an immediate step in comfort. An outsole with accentuated grooves for traction and support wraps the design. ",                                                                 
  price: nil,                                                                        
  created_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00,                        
  updated_at: Mon, 17 Oct 2022 04:01:37.871868000 UTC +00:00>,                       
 #<Silhouette:0x00007fd61f6cdd68                                                     
  id: 3,                                                                             
  name: "Yeezy Slide Orange",                                                        
  description: "yeezy slide orange event for a global drop",
  price: nil,
  created_at: Mon, 17 Oct 2022 13:19:55.218678000 UTC +00:00,
  updated_at: Mon, 17 Oct 2022 13:19:55.218678000 UTC +00:00>] 
2.7.2 :018 > 

Merge

> Raffle.Terminos.merge(terminos: :true)

Pluck/array de las colunmas

Raffle.where(terminos: true).pluck(:id, :nombre)
  Raffle Pluck (0.3ms)  SELECT "raffles"."id", "raffles"."nombre" FROM "raffles" WHERE "raffles"."terminos" = $1  [["terminos", true]]                                                                                                   
 => [[1, "Jorge"], [2, "jorge"], [3, "j"]]  

EXPLAIN/

Raffle.where(event_id: 1).joins(:event).explain
  Raffle Load (1.0ms)  SELECT "raffles".* FROM "raffles" INNER JOIN "events" ON "events"."id" = "raffles"."event_id" WHERE "raffles"."event_id" = $1  [["event_id", 1]]                             
 =>                                                                        
EXPLAIN for: SELECT "raffles".* FROM "raffles" INNER JOIN "events" ON "events"."id" = "raffles"."event_id" WHERE "raffles"."event_id" = $1 [["event_id", 1]]                                        
                                           QUERY PLAN                      
-------------------------------------------------------------------------------------------------
 Nested Loop  (cost=0.29..16.34 rows=1 width=254)                          
   ->  Index Scan using index_raffles_on_event_id on raffles  (cost=0.15..8.17 rows=1 width=254)
         Index Cond: (event_id = '1'::bigint)                              
   ->  Index Only Scan using events_pkey on events  (cost=0.15..8.17 rows=1 width=8)
         Index Cond: (id = '1'::bigint)                                    
(5 rows)   


EAGER_LOAD/LOAD A SPECIFIC ASOTIATION TYPE JOIN
                                                                            
2.7.2 :083 > Event.eager_load(:raffle).limit(1)
  SQL (41.8ms)  SELECT "events"."id" AS t0_r0, "events"."name" AS t0_r1, "events"."tittle" AS t0_r2, "events"."subtittle" AS t0_r3, "events"."description" AS t0_r4, "events"."created_at" AS t0_r5, "events"."updated_at" AS t0_r6, "events"."silhouette_id" AS t0_r7, "raffles"."id" AS t1_r0, "raffles"."dpi" AS t1_r1, "raffles"."nombre" AS t1_r2, "raffles"."apellido" AS t1_r3, "raffles"."correo" AS t1_r4, "raffles"."ig" AS t1_r5, "raffles"."numero" AS t1_r6, "raffles"."talla" AS t1_r7, "raffles"."fecha" AS t1_r8, "raffles"."fechalanzamiento" AS t1_r9, "raffles"."estilo" AS t1_r10, "raffles"."terminos" AS t1_r11, "raffles"."boletin" AS t1_r12, "raffles"."created_at" AS t1_r13, "raffles"."updated_at" AS t1_r14, "raffles"."event_id" AS t1_r15 FROM "events" LEFT OUTER JOIN "raffles" ON "raffles"."event_id" = "events"."id" LIMIT $1  [["LIMIT", 1]]                                                                                       
 =>                                                                                      
[#<Event:0x00007fd61ddbce78                                                              
  id: 2,                                                                                 
  name: "Yeezy slide resin",                                                             
  tittle: "Yeezy slide",
  subtittle: "Resin",
  description:
   " The adidas Yeezy Slide Resin is made of Resin EVA foam throughout the design to provide lightweight durability. From there, a soft footbed offers an immediate step in comfort. An outsole with accentuated grooves for traction and support wraps the design. ",
  created_at: Mon, 17 Oct 2022 04:11:33.454927000 UTC +00:00,
  updated_at: Mon, 17 Oct 2022 04:11:33.713971000 UTC +00:00,
  silhouette_id: 2>] 

IDS/return array ids

  Raffle Pluck (0.7ms)  SELECT "raffles"."id" FROM "raffles"
 => [1, 2, 3]      