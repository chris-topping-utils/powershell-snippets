# Universal silent uninstall, designed for use with RMM software to cleanup software across multiple machines.
# Confirm the name of the software you wish to remove. You can confirm this by running "Get-WmiObject -Class Win32_Product" copy/pasting the 'name' property.
$SoftwareName = "softwarenamehere"

# Get identifyingnumber and convert it to a string
$MagicNumber = Get-WmiObject -Class Win32_Product | Where-Object name -eq $SoftwareName | Select-Object -expand identifyingnumber

# Arguments for uninstall process
$MSIArguments = @(
"/x"
$MagicNumber
"/quiet"
)

# Kick off the uninstall
Start-Process -FilePath "$env:systemroot\system32\msiexec.exe" -ArgumentList $MSIArguments