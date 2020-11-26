select distinct 
	DaysAgo,
	count(*) as Devices  
from (
	select 
		MachineID,
		LastHardwareScan,
		DATEDIFF(dd,LastHardwareScan, GETDATE()) as [DaysAgo]
	from v_CombinedDeviceResources) as T1
group by DaysAgo 
order by DaysAgo desc