# Obtenir la liste des services démarrés du système
$services = Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name,Description,Status

# Exporter les résultats dans un fichier CSV
$services | Export-Csv -Path "services.csv" -Encoding utf8 -NoTypeInformation

# Afficher les résultats dans la console
$services | Format-Table -AutoSize
