$Import = Import-Csv -Path c:\users\ktoussaint\desktop\users.csv

$Import

$question2 = $Import | Measure-Object

$question2

$question3 = $Import | Measure-Object "MailboxSizeGB" -Sum

$question3

$question4 = $Import |  Compare-Object -property UserPrincipalName,EmailAddress

$question4

$question5 = $Import | group-Object -Property site | Select-Object name

$question5