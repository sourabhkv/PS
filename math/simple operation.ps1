Write-Host "calc"
$val1 = Read-Host "enter number1 "
$val2 = Read-Host "enter number2 "
$res1 = [int]$val1+[int]$val2
$res2 = [int]$val1-[int]$val2
$res3 = [int]$val1*[int]$val2
if ($val2 -ne 0)
{
    $res4 = [int]$val1/[int]$val2
}
else
{
    $res4 = "Error"
}
Write-Host "`r`n$val1 + $val2 = $res1"
Write-Host "`r`n$val1 - $val2 = $res2"
Write-Host "`r`n$val1 * $val2 = $res3"
Write-Host "`r`n$val1 / $val2 = $res4"
