## This file allows you to add users from users.csv to typed group by ID cell in .csv or here as variable
## input: users-file
## result: user is added to group provided in .csv or below as variable
$Users = Import-Csv -Path "C:\...\users-file.csv"   

$count = 1;
foreach ($User in $Users)            
{
        $Useremail = $User.'email2' # user mail XXX@domain.onmicrosoft.com

        #Choose if group is as column in CSV
        $Groupid = $User.'groupid' # group id is in .csv
        #$Groupid = '84eaec06-2753-4411-aa53-8c37d61320e2' # group id is provided here

        #UNCOMENT ONE OF BELOW
        Add-TeamUser -GroupId "$Groupid" -User "$Useremail" -Role Owner #Owner if teacher - he will be owner of Microsfot Teams Group
        #Add-TeamUser -GroupId "$Groupid" -User "$Useremail" -Role User  #User if user - only member of the Microsfot Team group

        $count #wyświetl który to już użytkownik
        $count += 1
}