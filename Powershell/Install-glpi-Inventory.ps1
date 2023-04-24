Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# Define the path to the MSI file
$msiPath = "C:\Scripts\GLPI-Agent-1.4-x64.msi"

# Define the arguments for the MSI installation
$msiArgs = "/quiet /i ""$msiPath"" RUNNOW=1 SERVER=""http://IPServer/glpi/front/inventory.php"""

# Start the MSI installation process
Start-Process -FilePath "msiexec.exe" -ArgumentList $msiArgs -Wait



