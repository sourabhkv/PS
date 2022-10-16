$url = "https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.msi"
Write-Host "Java 17 will be installed , 158 Mb internet is required" -for Yellow
Read-Host "Press Enter to start installation"
Invoke-WebRequest $url -OutFile .\java.msi
Write-Host "Installing.."
Start-Process .\java.msi -ArgumentList "/quiet /passive" -Wait
Write-Host "Java Installed setting up environment variables.."
Start-Process .\env.bat -Verb runAs -Wait
[System.Windows.MessageBox]::Show('Java Installed')
Remove-Item -Path .\java.msi -Force
