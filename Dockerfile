# Use an existing docker image as a base 
FROM mcr.microsoft.com/powershell

# Install and Import PowerCLI
RUN pwsh -command "Install-Module VMWare.PowerCLI -Force"

# Disable PowerCLI Customer Experience Program participation and self-service certificate warning
RUN pwsh -command "Set-PowerCLIConfiguration -Scope User -InvalidCertificateAction Ignore -ParticipateInCEIP:\$true -Confirm:\$false"

# Update packages
RUN apt-get update -y

# Install Python
RUN apt-get install python3 -y

# Copy Cisco UCS Power Tools
COPY  ./Modules ./usr/local/share/powershell/Modules

# Create a path in advance, then add required commands to the file
RUN mkdir -p /root/.config/powershell/

# Import PowerCLI modules
RUN echo "Import-Module VMware.VimAutomation.Core, VMware.VimAutomation.Common, VMware.VimAutomation.Cis.Core, VMware.VimAutomation.Sdk, VMware.VimAutomation.Srm, VMware.Vim" >> /root/.config/powershell/Microsoft.PowerShell_profile.ps1

# Import UCS Modules
RUN echo "Import-Module Cisco.UCSManager, Cisco.UCSCentral, Cisco.IMC" >> /root/.config/powershell/Microsoft.PowerShell_profile.ps1