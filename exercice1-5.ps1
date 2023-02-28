function InfoProcessus($processName) {
    Get-Process | Where-Object {$_.ProcessName -eq $processName} | Select-Object Id, ProcessName, Description | Format-Table -AutoSize
}