param
(
    [Parameter()][System.String]$containerName,
    [Parameter()][System.String]$appName,
    [Parameter()][System.String]$appFile
)

Try{
   #Unpublish-BcContainerApp -containerName $containerName -appName $appName -uninstall -tenant default
}
catch{}

Publish-BcContainerApp -containerName $containerName -appFile $appFile -skipVerification -sync -install -scope Tenant