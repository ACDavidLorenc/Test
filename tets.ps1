Write-Host "Kompilace projektu"

$alcPath = 'C:\git\Test\bin\alc.exe'
$appProjectFolder = 'C:\git\IB-ACProductivityPackW1'
$appSymbolsFolder = 'C:\git\IB-ACProductivityPackW1\.alpackages'
$appOutputFile = 'C:\git\IB-ACProductivityPackW1\generovanyTest.app'

#.\compile.ps1 -alcPath $alcPath -appProjectFolder $appProjectFolder -appSymbolsFolder $appSymbolsFolder -appOutputFile $appOutputFile

Write-Host "Projekt byl přeložen.
-------------------------------
Nahrávání aplikace do SandBoxu" 

$containerName = "bc21czTests"
$appName = "AC Productivity Pack"
$appFile = 'C:\git\IB-ACProductivityPackW1\generovanyTest.app' 

.\publish.ps1 -containerName $containerName -appName $appName -appFile $appFile

Write-Host "Kompilace projektu"

$alcPath = 'C:\git\Test\bin\alc.exe'
$appProjectFolder = 'C:\git\IB-ACProductivityPackW1-Tests'
$appSymbolsFolder = 'C:\git\IB-ACProductivityPackW1-Tests\.alpackages'
$appOutputFile = 'C:\git\IB-ACProductivityPackW1-Tests\generovanyTest.app'

#.\compile.ps1 -alcPath $alcPath -appProjectFolder $appProjectFolder -appSymbolsFolder $appSymbolsFolder -appOutputFile $appOutputFile

Write-Host "Projekt byl přeložen.
-------------------------------
Nahrávání aplikace do SandBoxu" 

$containerName = "bc21czTests"
$appName = "AC Productivity Pack Tests"
$appFile = 'C:\git\IB-ACProductivityPackW1-Tests\generovanyTest.app' 

.\publish.ps1 -containerName $containerName -appName $appName -appFile $appFile