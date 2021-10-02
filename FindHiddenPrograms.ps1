Get-EventLog -LogName System -InstanceId 1073748869 |
ForEach-Object {

    [PSCustomObject]@{
        Date = $_.TimeGenerated
        Name = $_.ReplacementStrings[0]
        Path = $_.ReplacementStrings[1]
        StartMode = $_.ReplacementStrings[3]
        User = $_.ReplacementStrings[4]


    }
}  | Out-GridView