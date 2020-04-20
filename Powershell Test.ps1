Import-Csv -Path c:\users\ktoussaint\desktop\users.csv
get-content C:\users\ktoussaint\desktop\Users.csv | convertfrom-csv | Measure-Object 
get-content C:\users\ktoussaint\desktop\Users.csv | convertfrom-csv | Measure-Object "MailboxSizeGB" -Sum
get-content C:\users\ktoussaint\desktop\Users.csv | convertfrom-csv | Compare-Object -property UserPrincipalName,EmailAddress
get-content C:\users\ktoussaint\desktop\Users.csv | convertfrom-csv | group-Object -Property site | Select-Object name