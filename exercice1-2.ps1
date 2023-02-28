# Commentaire : Ce script permet de lister les numéros d'identifiants et les noms des processus svchost.

# Obtenir tous les processus svchost en cours d'exécution
$processes = Get-Process svchost

# Boucle sur chaque processus svchost pour afficher son ID et son nom
foreach ($process in $processes) {
    Write-Output " $($process.Id) $($process.ProcessName)"
}