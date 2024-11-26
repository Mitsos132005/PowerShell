$processes = Get-Process | Where-Object { $_.Name -eq "*note*" }
if($null -eq $processes)
{
    Start-Process notepad
}
$a = Get-Process *note*
if( (Stop-Process $a -Confirm) -eq $true)
{
    Write-Host "Process stopped"
}
