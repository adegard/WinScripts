# Windows Powershell Usefull Scripts
Collection of best Powershell Scripts references for "Debloat Windows 10", file cleaning, privacy and performance optimisation on Windows 10.
Just copy each command in your powershell cli and press enter, it will download and execute each script.

***Before launching any script, please check reference code***

# Debloat Windows 10
(ref. from https://christitus.com/debloat-windows-10-2020/)

```
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JJ8R4'))
```
(ref from https://github.com/Sycnex/Windows10Debloater)
```
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
```
(ref from https://github.com/gordonbay/Windows-On-Reins - this tool also install open source usefull programs)
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/gordonbay/Windows-On-Reins/master/wor.ps1'))
```
# Other optimizations

https://github.com/FrostFyre1337/Windows-Performance-Tweaks

......optimize-user-interface.ps1.....
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/W4RH4WK/Debloat-Windows-10/master/scripts/optimize-user-interface.ps1'))
```
......privacy settings .....
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/W4RH4WK/Debloat-Windows-10/master/scripts/fix-privacy-settings.ps1'))
```
......service disabling .....
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/W4RH4WK/Debloat-Windows-10/master/scripts/disable-services.ps1'))
```
# Clean Windows files
Windows tool
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/adegard/WinScripts/main/cleanWin.ps1'))
```
(ref from https://github.com/larspassic/CleanUp-Temp.ps1 temp folder cleaner)
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/larspassic/CleanUp-Temp.ps1/main/CleanUp-Temp.ps1'))
```
# List of installed softwares
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/adegard/WinScripts/main/ReadInstalledSoftwares.ps1'))
```
# Finding hidden programs
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/adegard/WinScripts/main/FindHiddenPrograms.ps1))
```


# Schedule cleaning with Windows Sheduler
Open Task Scheduler by pressing “Windows+R” and then typing “taskschd.msc” in the window that opens. Then create a new task like that:
(https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/)
![](https://github.com/adegard/WinScripts/blob/main/addonstartup.png?raw=true)

# Update Windows 10
Use [UpdateOS](https://www.powershellgallery.com/packages/UpdateOS/1.3) script:
```
Install-Script -Name UpdateOS
```

then:
```
UpdateOS
```

If scripts are disabled used:
```
Set-ExecutionPolicy Bypass -Scope Process -Force
```
![](https://github.com/adegard/WinScripts/blob/main/updateOS.jpg)
Schedule it 1 per month (as described above: program= powershell, comand= UpdateOS)


# Reinstall Windows App Store:

It happens that you lost the apps store and want to recover it, so use the following command:
```
Get-AppxPackage -allusers Microsoft.WindowsStore | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

```
