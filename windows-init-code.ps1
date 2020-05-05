# Install chocolatey
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Updates
Install-Module -Name PSWindowsUpdate
Get-WindowsUpdate -Install

# Eliminate Bloatware
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Sycnex/Windows10Debloater/master/Windows10SysPrepDebloater.ps1'))

# Install basics
<#
choco install -y 7zip
choco install -y notepadplusplus
choco install -y wsl
choco install -y googlechrome --ignore-checksum
choco pin -y googlechrome
choco install -y firefox
choco pin -y firefox
choco install -y adobereader
choco install -y sysinternals
choco install -y 1password -f -not-silent
choco pin -y 1password
choco install -y potplayer
choco install -y malwarebytes
choco pin -y malwarebytes
choco install -y wsl-ubuntu-1804
choco pin -y wsl-ubuntu-1804

# Code
choco install -y git
choco install -y gitextensions
choco install -y openjdk11
choco install -y vscode
choco install -y apache-netbeans.portable
choco install -y github-desktop
choco pin -y github-desktop
choco install -y typora
choco pin -y typora
#>