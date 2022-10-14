<#Display files from a directory with specific extension#>
$loc = Read-Host -Prompt 'Input your location'
$ext = Read-Host -Prompt 'Input file extension (eg: .pdf)'
Get-ChildItem -Path $loc | Where {($_.Length -gt '10000')} | Sort {$_.Length} | Where {$_.Extension -like $ext}
read-host “`r`nPress ENTER to continue...”
