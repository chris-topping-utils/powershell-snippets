# Get-Dinopass
# Pulls a strong pw from Dinopass with a minimum 12 characters, copies it to clipboard

$password = 0
while($password.length -lt 12)
{
    $password = Invoke-RestMethod -uri https://www.dinopass.com/password/strong
}

$password | Set-clipboard

Write-Output "Password copied to clipboard:" $password