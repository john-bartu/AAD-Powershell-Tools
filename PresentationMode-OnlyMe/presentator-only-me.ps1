#Import-Module SkypeOnlineConnector
#$sfbSession = New-CsOnlineSession
#Import-PSSession $sfbSession


Get-CsTeamsMeetingPolicy -Identity Global

#Set-CsTeamsMeetingPolicy -Identity Global -DesignatedPresenterRoleMode OrganizerOnlyUserOverride