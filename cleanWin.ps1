##################################################################################   
<# 
based modifyed of the followings
https://gallery.technet.microsoft.com/scriptcenter/Powershell-script-to-12de6135
 https://teckangaroo.com/clean-up-unwanted-files-in-pc/

by adegard, 2021
https://github.com/adegard/WinScripts/
 
#> 
##################################################################################   
  (New-Object -ComObject Shell.Application).Namespace(0xA).items() | %{ rm $_.path -Recurse -Confirm:$false}
  rm c:\Windows\Temp\* -Recurse -Force -ErrorAction SilentlyContinue
  rm “C:\Users\*\Appdata\Local\Temp\*” -Recurse -Force -ErrorAction SilentlyContinue
  
cleanmgr /sagerun:1 | out-Null
        write-Host "**Clean Up completed**" 
##End of execution## 
##### End of the Script ##### ad   
