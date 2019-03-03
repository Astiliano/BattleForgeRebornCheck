function GetLog {
$log_path="$([Environment]::GetFolderPath("MyDocuments"))\BattleForge\Diag\log.txt"
if (Test-Path $log_path) {
Write-Output "`n`n`n`n ---------------------------`n"
Write-Output "Using log.txt from $log_path`n"

Write-Output "`t###First 30 Lines:"
Get-Content "$log_path" | select -First 30

Write-Output "`n`n`t###Searching for 'WARN', 'ERROR', 'DEBUG', and removing 'Not enough different creep entities' from results, getting uniques and showing last 15 error/warn types"
Get-Content "$log_path" | Select-String -Pattern 'ERROR|WARN|DEBUG' | Select-String -Pattern 'Not enough different creep entities' -NotMatch | Get-Unique -AsString | select -Last 15
} Else {
Write-Output "Unable to verify $log_path - make sure it exists"
}
}

GetLog
