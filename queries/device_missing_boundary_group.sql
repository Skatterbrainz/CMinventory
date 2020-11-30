select 
	sys.ResourceId, 
	sys.ResourceType, 
	sys.Name0 as ComputerName, 
	sys.SMS_Unique_Identifier0 as SMSID,
	sys.Resource_Domain_OR_Workgr0 as Domain, 
	sys.Client0 as Client
from v_R_System sys 
where sys.ResourceId in
	(select resourceid from v_CollectionMemberClientBaselineStatus cbs
		where cbs.boundarygroups is NULL)
	and sys.Name0 not in ('Unknown') 
	and sys.Client0 = 1
order by
	sys.Name0 