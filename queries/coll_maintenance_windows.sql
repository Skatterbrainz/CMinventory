SELECT DISTINCT 
	coll.Name, 
	coll.Comment, 
	sw.Description, 
	sw.StartTime, 
	sw.Duration, 
	coll.MemberCount, 
	fcm.ResourceID, 
	fcm.Name AS ComputerName
FROM 
	v_ServiceWindow AS sw INNER JOIN
	v_Collection AS coll ON coll.CollectionID = sw.CollectionID LEFT OUTER JOIN
	v_FullCollectionMembership_Valid AS fcm ON sw.CollectionID = fcm.CollectionID
ORDER BY 
	coll.Name, ComputerName