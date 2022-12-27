# Use an existing docker image as a base 
FROM mcr.microsoft.com/powershell:7.3-ubuntu-22.04

# Upgrade packages
RUN apt-get update && apt-get upgrade -y

# Install dependencies
RUN apt-get install python3-pip iputils-ping nano curl wget jq git dnsutils  -y
RUN pip3 install ansible requests paramiko jira ucsmsdk netaddr

# Install modules
RUN pwsh -command "Install-Module VMWare.PowerCLI, AWSPowerShell.NetCore -Force"
RUN pwsh -command "Install-Module Cisco.UCSManager, Cisco.IMC -AcceptLicense -Force"

# Create a path in advance, then add required commands to the file
RUN mkdir -p /root/.config/powershell/

# Import UCS modules as VMWare one will load automatically and AWS ones are too slow to load them every time automatically
RUN echo "Import-Module Cisco.UCSManager" > /root/.config/powershell/Microsoft.PowerShell_profile.ps1

# Disable PowerCLI Customer Experience Program participation and self-service certificate warning
RUN pwsh -command "Set-PowerCLIConfiguration -Scope User -InvalidCertificateAction Ignore -ParticipateInCEIP:\$true -Confirm:\$false"
