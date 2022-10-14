Write-Host "Even or odd"
$num = Read-Host "enter number to check odd or even"
if ([int]$num%2 -eq 0)
{
    Write-Host "`r`n$num is even"
}
else{
    Write-Host "`r`n$num is odd"
}
