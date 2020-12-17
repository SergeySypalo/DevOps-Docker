# Use an existing docker image as a base 
FROM mcr.microsoft.com/powershell:7.2.0-preview.1-ubuntu-20.04

# Upgrade packages
RUN apt-get update && apt-get upgrade -y

# Install wget and apt-utils packages
RUN apt-get install wget -y

# Update PowerShell to 7.2-preview2
RUN cd /tmp
RUN wget https://github.com/PowerShell/PowerShell/releases/download/v7.2.0-preview.2/powershell-preview_7.2.0-preview.2-1.ubuntu.20.04_amd64.deb
RUN dpkg -i *.deb
RUN rm powershell-preview_7.2.0-preview.2-1.ubuntu.20.04_amd64.deb

# Install dependencies
RUN apt-get install python3-pip iputils-ping nano -y
RUN pip3 install ansible requests paramiko jira ucsmsdk

# Install modules
RUN pwsh -command "Install-Module VMWare.PowerCLI, AWSPowerShell.NetCore -Force"
RUN pwsh -command "Install-Module Cisco.UCSManager, Cisco.IMC -AcceptLicense -Force"

# Create a path in advance, then add required commands to the file
RUN mkdir -p /root/.config/powershell/

# Import modules
RUN pwsh -command '"Import-Module " + ((gci /root/.local/share/powershell/Modules/ | ? { $_.Name -notlike "*DeployAutomation" -and $_.Name -notlike "*VumAutomation" -and $_.Name -notlike "*PowerCLI" -and $_.Name -notlike "*ImageBuilder" -and $_.Name -notlike "*HorizonView"}).Name -join ", ") > /root/.config/powershell/Microsoft.PowerShell_profile.ps1'

# Disable PowerCLI Customer Experience Program participation and self-service certificate warning
RUN pwsh -command "Set-PowerCLIConfiguration -Scope User -InvalidCertificateAction Ignore -ParticipateInCEIP:\$true -Confirm:\$false"