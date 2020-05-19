## Ten plik dodaje użytkownika do wszystkich grupy z pliku CSV
$Users = Import-Csv -Path "C:\Users\bartu\Documents\file.csv"   
$Groups = Import-Csv -Path "C:\Users\bartu\Documents\grupy.csv"   

$id = 1
foreach ($User in $Users)            
{

        $Useremail = $User.'email2' #mail z domeną @onmicrosoft

        foreach ($Group in $Groups)            
        {
                $Groupid = $Group.'groupid'
                Add-TeamUser -GroupId "$Groupid" -User "$Useremail" -Role Owner #jestli nauczyciel
                #Add-TeamUser -GroupId "$Groupid" -User "$Useremail" -Role User #jestli uczen 

                $id #wyświetl który to user
                $id +=1
        }
}