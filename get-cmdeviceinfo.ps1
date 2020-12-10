function Get-CmDeviceInfo {
	[CmdletBinding()]
	param (
		[parameter(Mandatory)][string] $DeviceName,
		[parameter(Mandatory)][string] $ServerName,
		[parameter()][pscredential] $Credential
	)
	try {
		[string]$uri = "https://$($ServerName)/AdminService/wmi/SMS_R_System?$filter=startswith(Name,'$($DeviceName)') eq true"
		if ($null -eq $Credential) {
			$response = Invoke-WebRequest -Uri $uri -UseDefaultCredentials -ErrorAction Stop 
		} else {
			$response = Invoke-WebRequest -Uri $uri -Credential $Credential -ErrorAction Stop 
		}
		
		Write-Output $($response.Content | ConvertFrom-Json).value
	}
	catch {
		Write-Error $_.Exception.Message 
	}
}