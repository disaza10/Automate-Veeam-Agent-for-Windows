$fpath = "C:\Program Files\Veeam\Endpoint Backup" 
 
$isfile = Test-Path $fpath
if($isfile -eq $True) {
     Write-host "File exists"
     exit
}
else {
     Write-host "File does not exist"
     New-Item -Path 'C:\Veeam_Install' -ItemType Directory

$url = "**ADD INSTALL FILE HERE, I USED ONEDRIVE**"
$outpath = "C:\Veeam_Install\veeamagentforwindows.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

cmd /c C:\Veeam_Install\veeamagentforwindows.exe /silent /accepteula /acceptthirdpartylicenses

Remove-Item C:\Veeam_Install

}
