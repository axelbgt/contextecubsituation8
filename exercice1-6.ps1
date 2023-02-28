

function InfoProcessus($processName) {
   




# Filtrer les processus correspondants et afficher les informations
$infoProcessus = Get-Process | Where-Object {$_.ProcessName -match $processName} | Select-Object Id,ProcessName,Description 

# Enregistrer les résultats dans un fichier texte et un fichier CSV
$infoProcessus | Out-File -FilePath "sauvegarde.txt" -Encoding utf8
$infoProcessus | Export-Csv -Path "sauvegarde.csv" -Encoding UTF8 -NoTypeInformation



}
InfoProcessus "power"
# Afficher un message de confirmation à l'utilisateur
Write-Host "Les informations du processus $processName ont été sauvegardées dans les fichiers sauvegarde.txt et sauvegarde.csv."