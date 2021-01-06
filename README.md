# Windows Powershell Usefull Scripts
Powershell Scripts references for "Debloat Windows 10" and Windows cleanup.

# Debloat Windows 10
(ref. from https://christitus.com/debloat-windows-10-2020/)

```
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JJ8R4'))
```
(ref from https://github.com/Sycnex/Windows10Debloater)
```
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
```
# Other optimizations

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
# clean Windows files
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/adegard/WinScripts/main/cleanWin.ps1'))
```

# Schedule cleaning with Windows Sheduler
(https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/)
![](https://github.com/adegard/WinScripts/blob/main/addonstartup.png?raw=true)

