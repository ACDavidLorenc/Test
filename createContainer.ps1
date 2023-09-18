param
(
    [Parameter()][System.String]$artifactUrl,
    [Parameter()][System.String]$ContainerName,
    [Parameter()][System.Object]$Credential,
    [Parameter()][System.String]$licenseFilePath
)

Set-ExecutionPolicy Unrestricted

Import-Module BcContainerHelper

Write-Host "artifactUrl: "
$artifactUrl
Write-Host

New-BcContainer -accept_eula -containerName $ContainerName -artifactUrl $artifactUrl -includeTestToolkit -includeTestLibrariesOnly -includeAL`
-useSSL -updateHosts -isolation hyperv -Credential $Credential -auth NavUserPassword -licenseFile $licenseFilePath 
