# Use an existing docker image as a base 
FROM mcr.microsoft.com/powershell:preview-ubuntu-20.04

# Upgrade packages
RUN apt-get update && apt-get upgrade -y

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