select distinct 
	Manufacturer0 as Manufacturer,
	Model0 as Model, 
	count(*) as Devices 
from v_GS_COMPUTER_SYSTEM
group by Manufacturer0, Model0 
order by Manufacturer0, Model0 