$s1 = Read-Host "enter string "
$s2 = ""
for ($i = $s1.Length-1 ; $i -ge 0 ; $i--)
{
    $s2 += $s1[$i]
}
Write-Host "reverse of $s1 is $s2"
