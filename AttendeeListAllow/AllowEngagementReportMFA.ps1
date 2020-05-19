# First download the Powershell module https://www.microsoft.com/en-us/download/details.aspx?id=39366
# When Multifactor Authentication for admins is turned on
## Allow download Attendee during MS Teams meeting

Set-ExecutionPolicy RemoteSigned
Import-Module SkypeOnlineConnector
New-CsOnlineSession
Set-CSTeamsMeetingPolicy -Identity Global -AllowEngagementReport "Enabled"