# Get-Dinopass
# Chris Topping 29/4/20
# Pulls a strong pw from Dinopass > 12 characters

$password = 0
while($password.length -lt 12)
{
    $password = Invoke-RestMethod -uri https://www.dinopass.com/password/strong
}

Write-Output "Your password is" $password