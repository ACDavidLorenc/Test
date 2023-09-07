$alcPath = 'C:\git\bin'
$appProjectFolder = 'C:\git\IB-ACProductivityPackW1-Tests'
$appSymbolsFolder = 'C:\git\IB-ACProductivityPackW1-Tests\.alpackages'
$appOutputFile = 'C:\git\IB-ACProductivityPackW1-Tests\generovanyTest.app'
Set-Location -Path $alcPath
& .\alc.exe /project:$appProjectFolder /packagecachepath:$appSymbolsFolder /out:$appOutputFile