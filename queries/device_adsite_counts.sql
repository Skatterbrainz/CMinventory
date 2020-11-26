select distinct 
	ADSiteName,
	count(*) as Devices
from v_CombinedDeviceResources 
group by ADSiteName
order by ADSiteName