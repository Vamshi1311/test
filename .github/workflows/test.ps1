$devuser=$args[0]
$devPword=$args[1]

$User = "$SECRETS.$devuser"
$PWord = ConvertTo-SecureString -String "$SECRETS.$devPword" -AsPlainText -Force
$destinationCredentials = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord
Write-Output $destinationCredentials
