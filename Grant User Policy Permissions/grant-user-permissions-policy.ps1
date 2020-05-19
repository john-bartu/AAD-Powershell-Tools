## Ten przypisuje uprawnienia Microsoft Teams najbardziej restrykcyjne
$Users = Import-Csv -Path "C:\Users\bartu\Documents\uczniowieid.csv"   

$count = 1;
foreach ($User in $Users)            
{
        $UserID = $User.'ID' #mail z domeną @onmicrosoft
        $PolicyName = "Education_PrimaryStudent"
        Grant-CsUserPolicyPackage -Identity $Userid -PackageName $PolicyName
        $count/156
        $count += 1
}