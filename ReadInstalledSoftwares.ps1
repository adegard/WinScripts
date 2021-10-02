# list of registry locations where installed software is stored
$paths = 
# all users x64
'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*', 
# all users x86
'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*', 
# current user x64
'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*', 
# current user x86
'HKCU:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'

Get-ItemProperty -ErrorAction Ignore -Path $paths |
    # eliminate all entries with empty DisplayName
    Where-Object DisplayName |
    # select some properties (registry values)
    Select-Object -Property DisplayName, DisplayVersion, UninstallString, QuietUninstallString