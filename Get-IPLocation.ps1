# Get location of an IP address via iplocation.net API
# Chris Topping 20211204

$ip = Read-Host "Retrieve location for which IP?"
$url = "https://api.iplocation.net/?ip=" + $ip
Invoke-RestMethod -Method get -Uri $url | Format-List
Pause