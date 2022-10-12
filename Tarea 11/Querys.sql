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
