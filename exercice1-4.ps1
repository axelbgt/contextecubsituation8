# Demander à l'utilisateur quel processus svchost il souhaite filtrer
$processName = Read-Host "Quel processus svchost désirez-vous afficher ?"

Get-Process | Where-Object {$_.ProcessName -eq $processName} | Select-Object Id,ProcessName,Description | Format-Table -AutoSize    