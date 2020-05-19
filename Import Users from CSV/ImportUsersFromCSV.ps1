# This file 
# input: users-to-import.csv
# output: UsersID in Terminal - Copy them all after execute, for later usage paste to csv as another column

$Users = Import-Csv -Path "C:\....\users-to-import.csv"            
foreach ($User in $Users)            
{            
    $Displayname = $User.'DisplayName'
    $UserFirstname = $User.'FirstName'            
    $UserLastname = $User.'LastName'                         
    $Password   = $User.'Password'
    $Nickname = $User.'Nickname'
    $UPN = $User.'UserPrincipalName' #This is mail MAIL@XXX.onmicrosoft.com / or configurated domain MAIL@domain.com
    
    $PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile           
    $PasswordProfile.Password = $Password
    $PasswordProfile.ForceChangePasswordNextLogin= $true # Force users to change their passwords at first login
    $PasswordProfile.EnforceChangePasswordPolicy= $true      
    New-AzureADUser -DisplayName "$Displayname" -MailNickName $Nickname  -UserPrincipalName $UPN -UserType "Member" -GivenName "$UserFirstname" -Surname "$UserLastname" -PasswordProfile $PasswordProfile -AccountEnabled $true   
}
 