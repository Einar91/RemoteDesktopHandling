function Export-CybRDCServerList {
$RDCManList = Get-Content '\\..\RDCMan.rdg'
$Servers = $RDCManList | Select-String "<name>" | Select-String -Pattern ".+\:.+|MainWorkspace" -NotMatch 
$Servers -replace "<name>" -replace "</name>" -replace " " | Out-File \\RDCMan\RDC_ServerList.txt -Force
}