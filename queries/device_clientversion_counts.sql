select distinct
	ClientVersion,
	count(*) as Installs
from v_CombinedDeviceResources
group by ClientVersion 
order by ClientVersion