CLS
$date = Get-Date
Write-Host "-------------------PC INFO--------------------"
Write-Host “Current date and time  : " $date
Write-Host "Computername           : " $env:COMPUTERNAME
Write-Host "Username               : " $env:USERNAME
Write-Host "OS                     : " $env:OS
Write-Host "---------------------DISK---------------------"
$disk = Get-Disk -Number 0
Write-Host "Disk 0 type            : " $disk.FriendlyName
Write-Host "Disk 0 size in bits    : " $disk.AllocatedSize
Write-Host "---------------------WIFI---------------------"
$wifi = Get-Netadapter | Where-Object {$_.Name -eq "Wi-Fi"}
Write-Host "Interface Description  : " $wifi.InterfaceDescription
Write-Host "Interface Link-Speed   : " $wifi.LinkSpeed
Write-Host "Interface Status       :  " -NoNewline
Write-Host $wifi.status -Foregroundcolor green
Write-Host "---------------------SPECS--------------------"
$cpu = Get-WMIObject win32_Processor | Where-Object {$_.DeviceID -eq "CPU0"}
$memory = Get-WMIObject win32_physicalmemory | Where-Object {$_.DeviceID -eq "Fysiek Geheugen"}
Write-Host "Processor              : " $cpu.name
Write-Host "Geheugen               : " $memory.name
Write-Host "Bios versie            : "
Write-Host " "
Write-Host " "