#java silent installer for JDK 17,19
Write-Host "1. Java 17       2. Java 19" -for Yellow
$ver = Read-Host "enter choice (1 or 2)"
if ($ver -eq 1)
{
    $url = "https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.msi"
    Write-Host "Java 17 will be installed , 158 Mb internet is required" -for Yellow
    Invoke-WebRequest $url -OutFile .\java.msi
    $env:path+=";C:\Program Files\Java\jdk-17.0.4.1\bin"
}
elseif ($ver -eq 2)
{
    $url = "https://download.oracle.com/java/19/latest/jdk-19_windows-x64_bin.msi"
    Write-Host "Java 19 will be installed , 162 Mb internet is required" -for Yellow
    Invoke-WebRequest $url -OutFile .\java.msi
    $env:path+=";C:\Program Files\Java\jdk-19\bin"
}
else
{
    Exit(0)
}
Write-Host "Installing.."
Start-Process .\java.msi  -ArgumentList "/quiet /passive" -Wait
Write-Host "Java Installed setting up environment variables.."
[Environment]::SetEnvironmentVariable("Path",$env:Path, [System.EnvironmentVariableTarget]::User)
Remove-Item -Path .\java.msi
Read-Host "Java installed successfully press ENTER to exit"
