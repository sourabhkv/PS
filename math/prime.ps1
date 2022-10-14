Write-Host "Check prime"
$num = Read-Host "enter number"
$factor = 0
if ($num -eq 1)
{
    Write-Host "1 is Composite" -ForegroundColor yellow
}
if($num -gt 1){
    $i=1
    for($i=1 ; $i -le [int]$num ; $i++)
    {
        if ($num%$i -eq 0)
        {
            $factor+=1
        }
    }
    if ($factor -eq 2)
    {
        Write-Host "$num is prime" -ForegroundColor green
    }
    else{
        Write-Host "$num is not prime" -ForegroundColor red
    }
}
