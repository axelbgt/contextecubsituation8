function InfoProcessus($processName) {
    Get-Process | Where-Object {$_.ProcessName -match $processName} | Select-Object Id, ProcessName, Description | Format-Table -AutoSize
}
InfoProcessus("system")