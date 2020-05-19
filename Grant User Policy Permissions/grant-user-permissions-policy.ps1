# Grant User Perrmisions Policy Package
## input: users-file.csv
## result users provided in users_file.csv had granted UserPolicyPackage provided below in variable

$Users = Import-Csv -Path "C:\..\users_file.csv"
$count = 1;

foreach ($User in $Users)            
{
        $UserID = $User.'ID' #mail with XXX@domain.onmicrosoft.com / or your
        $PolicyName = "Education_PrimaryStudent" #Name of Package
        Grant-CsUserPolicyPackage -Identity $Userid -PackageName $PolicyName

        $count/156 # show percentage if you want
        $count += 1
}