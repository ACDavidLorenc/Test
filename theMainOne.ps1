Write-Host "Vytváøení kontejrneru"
$artifactUrl = Get-BCArtifactUrl -type Sandbox -country "cz" -version "21" -select Latest
$ContainerName = "bc21czTests"
$Credential = New-Object pscredential 'admin', (ConvertTo-SecureString -String 'adminPwd' -AsPlainText -Force)
$licenseFilePath = ".\AC_Demo_Dev_Licence_BC21.flf"

.\createContainer.ps1 -artifactUrl $artifactUrl -ContainerName $ContainerName -Credential $Credential -licenseFilePath $licenseFilePath

Write-Host "Kontejner vytvoøen.
-------------------------------
Kompilace projektu"

#C:\Users\lorencd\.vscode\extensions\ms-dynamics-smb.al-11.7.863928\bin
$alcPath = 'C:\git\Test\bin\alc.exe'
$appProjectFolder = 'C:\git\IB-ACProductivityPackW1-Tests'
$appSymbolsFolder = 'C:\git\IB-ACProductivityPackW1-Tests\.alpackages'
$appOutputFile = 'C:\git\IB-ACProductivityPackW1-Tests\generovanyTest.app'

.\compile.ps1 -alcPath $alcPath -appProjectFolder $appProjectFolder -appSymbolsFolder $appSymbolsFolder -appOutputFile $appOutputFile

Write-Host "Projekt byl pøeložen.
-------------------------------
Nahrávání aplikace do SandBoxu" 

$containerName = "bc21czTests"
$appName = "AC Productivity Pack Tests"
$appFile = 'C:\git\IB-ACProductivityPackW1-Tests\generovanyTest.app' 

.\publish.ps1 -containerName $containerName -appName $appName -appFile $appFile

Write-Host "Aplikace byla nahrána.
-------------------------------
Smazání kontejneru." 

#.\removeConteiner.ps1 -ContainerName $ContainerName


