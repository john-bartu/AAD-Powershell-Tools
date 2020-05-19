#output: groupid,displaname - as CSV with coma separator
#info: copy result and paste to .csv file, here you can copy IDs of your groups

$teams = Get-Team

"groupid,displayname"

foreach ($team in $teams){
    $team.groupid + "," + $team.displayname
}
 