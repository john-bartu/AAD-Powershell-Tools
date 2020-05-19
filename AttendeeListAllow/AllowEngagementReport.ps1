# First download the Powershell module https://www.microsoft.com/en-us/download/details.aspx?id=39366
# Standard Authentication
## Allow download Attendee during MS Teams meeting

# NEED TO RUN POWERSHELL AS ADMINISTRATOR

Set-ExecutionPolicy RemoteSigned
$credential = Get-Credential
Import-Module SkypeOnlineConnector
$sfboSession = New-CsOnlineSession -Credential $credential
Import-PSSession $sfboSession
Set-CSTeamsMeetingPolicy -Identity Global -AllowEngagementReport "Enabled"