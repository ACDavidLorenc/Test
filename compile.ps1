param
(
    [Parameter()][System.String]$alcPath,
    [Parameter()][System.String]$appProjectFolder,
    [Parameter()][System.String]$appSymbolsFolder,
    [Parameter()][System.String]$appOutputFile
)

& $alcPath /project:$appProjectFolder /packagecachepath:$appSymbolsFolder /out:$appOutputFile
