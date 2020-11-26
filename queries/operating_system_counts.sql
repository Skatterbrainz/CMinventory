select distinct
	Caption0 as OSName,
	BuildNumber0 as Build,
	Case
		when (BuildNumber0 = '10240') then '1507*'
		when (BuildNumber0 = '10586') then '1511*'
		when (BuildNumber0 = '14393') then '1607*'
		when (BuildNumber0 = '15063') then '1703*'
		when (BuildNumber0 = '16299') then '1709*'
		when (BuildNumber0 = '17134') then '1803'
		when (BuildNumber0 = '17763') then '1809'
		when (BuildNumber0 = '18362') then '1903'
		when (BuildNumber0 = '18363') then '1909'
		when (BuildNumber0 = '19041') then '2004'
		when (BuildNumber0 = '19042') then '2009'
		when (BuildNumber0 = '7601') then 'SP1'
		else BuildNumber0 end as Version,
	COUNT(*) as Installs
from v_GS_OPERATING_SYSTEM
group by Caption0, BuildNumber0
order by OSname, Build