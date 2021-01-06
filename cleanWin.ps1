##################################################################################   
<# 
based modifyed of the followings

 https://teckangaroo.com/clean-up-unwanted-files-in-pc/

by adegard, 2021
https://github.com/adegard/WinScripts/
 
#> 
##################################################################################   
 write-Host "Empty recycle bin using Powershell.."
(New-Object -ComObject Shell.Application).Namespace(0xA).items() | %{ rm $_.path -Recurse -Confirm:$false}

 write-Host "Remove Windows temporary files using PowerShell.."
  rm c:\Windows\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
  
 write-Host "Delete User temp files using PowerShell.." 
  rm “C:\Users\*\Appdata\Local\Temp\*” -Recurse -Force -ErrorAction SilentlyContinue
  
write-Host "Run disk cleanup using PowerShell.."  
cleanmgr /sagerun:1 | out-Null
        write-Host "**Clean Up completed**" 
##End of execution## 
##### End of the Script ##### ad   
