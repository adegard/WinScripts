##################################################################################   
<# 
based modifyed of the followings
https://gallery.technet.microsoft.com/scriptcenter/Powershell-script-to-12de6135
 https://teckangaroo.com/clean-up-unwanted-files-in-pc/

 
#> 
##################################################################################   
  
## Function ## 
 
        #1# This function will convert byte Data to megabyte. 
 
         function foldersize($folder) 
         { 
 
         $folderSizeinbyte = (Get-ChildItem $folder -Recurse | Measure-Object -property length -sum) 
   
         $folderSizeinMB=($folderSizeinbyte.sum / 1048576) 
  
         return $folderSizeinMB 
         } 
  
         #2# This function will display the folder size before deletion. 
 
         function before($folder1) 
        { 
 
            $x=foldersize($folder1) 
            write-host "Total size before deletion=$x MB" 
            return $x 
        } 
 
        #3# This function will display the folder size after deletion. 
         function post($folder2) 
        { 
 
            $y=foldersize($folder2) 
            write-host "Total size after deletion $y MB" 
            return $y 
        } 
 
        #4# This function will display the warning message. 
        function msg($folder3) 
        { 
        write-Host "Removing Junk files in $folder3." -ForegroundColor Yellow -background black 
        } 
 
 
        #5# This function will display the total spcae cleared. 
        function totalmsg($folder4,$sum) 
        { 
        write-Host "Total space cleared in MB from $folder4" $Sum  -ForegroundColor Green 
        } 
 
        ## This function will cleanup the specified folder 
        function delete($folder5) 
        { 
 
            [double]$a=before($folder5) 
            msg($folder5) 
            Remove-Item -Recurse  $folder5 -Force -Verbose  
            [double]$b=post($folder5)  
 
            $total=$a-$b 
            totalmsg($folder5,$total) 
            $a=0 
            $b=0 
            $total=0 
        } 
##End of Functions Declartion.## 
 
 
## Variables Declaration####    
    
        $objShell = New-Object -ComObject Shell.Application    
        $Recyclebin = $objShell.Namespace(0xA)      
        $temp = get-ChildItem "env:\TEMP"    
        $temp2 = $temp.Value    
        $WinTemp = "$env:SystemDrive\Windows\Temp\*"      
        $CBS="$env:SystemDrive\Windows\Logs\CBS\"  
        $swtools="$env:SystemDrive\swtools\*" 
        $drivers="$env:SystemDrive\drivers\*" 
        $swsetup="$env:SystemDrive\swsetup\*" 
     #   $downloads="$env:SystemDrive\users\administrator\downloads\*" 
        $Prefetch="$env:SystemDrive\Windows\Prefetch\*" 
        $DowloadeUpdate="$env:SystemDrive\Windows\SoftwareDistribution\Download\*" 
##End of variable Declartion.## 
    
##Execution## 
     # Remove temp files located in "C:\Users\USERNAME\AppData\Local\Temp"    
        [double]$a=before($temp2) 
        msg($temp2) 
        Remove-Item -Recurse  "$temp2\*" -Force -Verbose  
        [double]$b=post($temp2)  
 
        $total=$a-$b 
        totalmsg($temp2,$total) 
 
     
    # Remove content of folder created during installation of driver     
       #   delete($swtools) 
     
 
    # Remove content of folder created during installation of Lenovo driver     
        #  delete($drivers) 
     
 
    # Remove content of folder created during installation of HP driver     
     #     delete($swsetup) 
 
    # Remove content of download folder of administrator account     
      #  delete($downloads)    
 
    # Empty Recycle Bin   
            write-Host "Emptying Recycle Bin." -ForegroundColor Cyan     
        $Recyclebin.items() | %{ remove-item $_.path -Recurse -verbose -Confirm:$false}    
 
 (New-Object -ComObject Shell.Application).Namespace(0xA).items() | %{ rm $_.path -Recurse -Confirm:$false}
 
    # Remove Windows Temp Directory  
        delete($WinTemp) 
    
 
 
    # Remove Prefetch folder content 
        delete($Prefetch) 
    
     
    # Remove CBS log file 
        #delete($CBS) 
     
 
    # Remove downloaded update 
        #delete($DowloadeUpdate) 
     
 
    #6# Running Disk Clean up Tool     
cleanmgr /sagerun:1 | out-Null
        write-Host "**Clean Up completed**" 
##End of execution## 
##### End of the Script ##### ad   
