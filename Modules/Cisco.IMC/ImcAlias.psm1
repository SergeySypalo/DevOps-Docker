Set-Alias Get-ImcMo Get-ImcManagedObject
Set-Alias Remove-ImcMo Remove-ImcManagedObject
Set-Alias Add-ImcMo Add-ImcManagedObject
Set-Alias Set-ImcMo Set-ImcManagedObject
##############################################################################
#.SYNOPSIS
# Starts IMC Server
#
#.DESCRIPTION
# Starts IMC Server
#
##############################################################################
function FnStartImcServer([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower up -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcServer -AdminPower up -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower up -Force
	}
	else
	{
		$input | Set-ImcServer -AdminPower up 
	}
}
Set-Alias Start-ImcServer FnStartImcServer
##############################################################################
#.SYNOPSIS
# Stops IMC Server
#
#.DESCRIPTION
# Stops IMC Server
#
##############################################################################
function FnStopImcServer([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower soft-shut-down -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcServer -AdminPower soft-shut-down -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower soft-shut-down -Force
	}
	else
	{
		$input | Set-ImcServer -AdminPower soft-shut-down 
	}
}
Set-Alias Stop-ImcServer FnStopImcServer
##############################################################################
#.SYNOPSIS
# Restarts IMC Server
#
#.DESCRIPTION
# Restarts IMC Server
#
##############################################################################
function FnRestartImcServer([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower cycle-immediate -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcServer -AdminPower cycle-immediate -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower cycle-immediate -Force
	}
	else
	{
		$input | Set-ImcServer -AdminPower cycle-immediate 
	}
}
Set-Alias Restart-ImcServer FnRestartImcServer
##############################################################################
#.SYNOPSIS
# Resets IMC Server
#
#.DESCRIPTION
# Resets IMC Server
#
##############################################################################
function FnResetImcServer([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower hard-reset-immediate -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcServer -AdminPower hard-reset-immediate -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcServer -AdminPower hard-reset-immediate -Force
	}
	else
	{
		$input | Set-ImcServer -AdminPower hard-reset-immediate 
	}
}
Set-Alias Reset-ImcServer FnResetImcServer
##############################################################################
#.SYNOPSIS
# Turn on locator LED of rack
#
#.DESCRIPTION
# Turns on the locator LEDs on the front and back of the physical server. You can use the locator LEDs to find this physical server in the rack
#
##############################################################################
function FnEnableImcLocatorLed([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcLocatorLed -AdminState on -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcLocatorLed -AdminState on -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcLocatorLed -AdminState on -Force
	}
	else
	{
		$input | Set-ImcLocatorLed -AdminState on 
	}
}
Set-Alias Enable-ImcLocatorLed FnEnableImcLocatorLed
##############################################################################
#.SYNOPSIS
# Turn off locator LED of rack
#
#.DESCRIPTION
# Turns off the locator LEDs on the front and back of the physical server. You can use the locator LEDs to find this physical server in the rack
#
##############################################################################
function FnDisableImcLocatorLed([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcLocatorLed -AdminState off -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcLocatorLed -AdminState off -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcLocatorLed -AdminState off -Force
	}
	else
	{
		$input | Set-ImcLocatorLed -AdminState off 
	}
}
Set-Alias Disable-ImcLocatorLed FnDisableImcLocatorLed
##############################################################################
#.SYNOPSIS
# Runs power characterization
#
#.DESCRIPTION
# Runs a platform characterization stress on the system instantaneously
#
##############################################################################
function FnInvokeImcPowerCharacterization([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcPowerBudget -AdminAction start-power-char -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcPowerBudget -AdminAction start-power-char -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcPowerBudget -AdminAction start-power-char -Force
	}
	else
	{
		$input | Set-ImcPowerBudget -AdminAction start-power-char 
	}
}
Set-Alias Invoke-ImcPowerCharacterization FnInvokeImcPowerCharacterization
##############################################################################
#.SYNOPSIS
# Resets power profile to defaults
#
#.DESCRIPTION
# Resets the power profile configuration to factory default values
#
##############################################################################
function FnResetImcPowerProfile([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcPowerBudget -AdminAction reset-power-profile-default -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcPowerBudget -AdminAction reset-power-profile-default -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcPowerBudget -AdminAction reset-power-profile-default -Force
	}
	else
	{
		$input | Set-ImcPowerBudget -AdminAction reset-power-profile-default 
	}
}
Set-Alias Reset-ImcPowerProfile FnResetImcPowerProfile
##############################################################################
#.SYNOPSIS
# Delete all virtual drives and reset the physical drives
#
#.DESCRIPTION
# Delete all virtual drives and reset the physical drives
#
##############################################################################
function FnResetImcStorageController([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction delete-all-vds-reset-pds -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction delete-all-vds-reset-pds -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction delete-all-vds-reset-pds -Force
	}
	else
	{
		$input | Set-ImcStorageController -AdminAction delete-all-vds-reset-pds 
	}
}
Set-Alias Reset-ImcStorageController FnResetImcStorageController
##############################################################################
#.SYNOPSIS
# Allows you to clear the controller's boot drive
#
#.DESCRIPTION
# Allows you to clear the controller's boot drive
#
##############################################################################
function FnClearImcBootDrive([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction clear-boot-drive -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction clear-boot-drive -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction clear-boot-drive -Force
	}
	else
	{
		$input | Set-ImcStorageController -AdminAction clear-boot-drive 
	}
}
Set-Alias Clear-ImcBootDrive FnClearImcBootDrive
##############################################################################
#.SYNOPSIS
# Allows you to clear the foreign configuration of any physical drives
#
#.DESCRIPTION
# Allows you to clear the foreign configuration of any physical drives
#
##############################################################################
function FnClearImcForeignConfig([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction clear-foreign-config -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction clear-foreign-config -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction clear-foreign-config -Force
	}
	else
	{
		$input | Set-ImcStorageController -AdminAction clear-foreign-config 
	}
}
Set-Alias Clear-ImcForeignConfig FnClearImcForeignConfig
##############################################################################
#.SYNOPSIS
# Allows you to disable JBOD
#
#.DESCRIPTION
# Allows you to disable JBOD
#
##############################################################################
function FnDisableImcJbod([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction disable-jbod -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction disable-jbod -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction disable-jbod -Force
	}
	else
	{
		$input | Set-ImcStorageController -AdminAction disable-jbod 
	}
}
Set-Alias Disable-ImcJbod FnDisableImcJbod
##############################################################################
#.SYNOPSIS
# Exposes both the virtual drives and also the physical drives that are not associated with a virtual drive
#
#.DESCRIPTION
# Exposes both the virtual drives and also the physical drives that are not associated with a virtual drive
#
##############################################################################
function FnEnableImcJbod([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction enable-jbod -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction enable-jbod -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction enable-jbod -Force
	}
	else
	{
		$input | Set-ImcStorageController -AdminAction enable-jbod 
	}
}
Set-Alias Enable-ImcJbod FnEnableImcJbod
##############################################################################
#.SYNOPSIS
# Allows you to retrieve LSI TTY log to Cisco IMC
#
#.DESCRIPTION
# Allows you to retrieve LSI TTY log to Cisco IMC
#
##############################################################################
function FnGetImcTtyLog([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction get-tty-log -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction get-tty-log -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction get-tty-log -Force
	}
	else
	{
		$input | Set-ImcStorageController -AdminAction get-tty-log 
	}
}
Set-Alias Get-ImcTtyLog FnGetImcTtyLog
##############################################################################
#.SYNOPSIS
# Allows you to import the foreign configuration available on the physical drives
#
#.DESCRIPTION
# Allows you to import the foreign configuration available on the physical drives
#
##############################################################################
function FnImportImcForeignConfig([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction import-foreign-config -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction import-foreign-config -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcStorageController -AdminAction import-foreign-config -Force
	}
	else
	{
		$input | Set-ImcStorageController -AdminAction import-foreign-config 
	}
}
Set-Alias Import-ImcForeignConfig FnImportImcForeignConfig
##############################################################################
#.SYNOPSIS
# Reboot CMC of Cisco UCS C3X60 server
#
#.DESCRIPTION
# Reboot CMC of Cisco UCS C3X60 server
#
##############################################################################
function FnResetImcEquipmentSystemIOController([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcequipmentSystemIOController -AdminPower cmc-reboot -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcequipmentSystemIOController -AdminPower cmc-reboot -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcequipmentSystemIOController -AdminPower cmc-reboot -Force
	}
	else
	{
		$input | Set-ImcequipmentSystemIOController -AdminPower cmc-reboot 
	}
}
Set-Alias Reset-ImcEquipmentSystemIOController FnResetImcEquipmentSystemIOController
##############################################################################
#.SYNOPSIS
# Turn on front locator LED of Cisco UCS C3X60 server
#
#.DESCRIPTION
# Turns on the front locator LED of Cisco UCS C3X60 server. You can use the locator LEDs to find this physical server in the rack
#
##############################################################################
function FnEnableImcChassisLocatorLed([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcChassisLocatorLed -AdminState on -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcChassisLocatorLed -AdminState on -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcChassisLocatorLed -AdminState on -Force
	}
	else
	{
		$input | Set-ImcChassisLocatorLed -AdminState on 
	}
}
Set-Alias Enable-ImcChassisLocatorLed FnEnableImcChassisLocatorLed
##############################################################################
#.SYNOPSIS
# Turn off front locator LED of Cisco UCS C3X60 server
#
#.DESCRIPTION
# Turns off the front locator LED of Cisco UCS C3X60 server. You can use the locator LEDs to find this physical server in the rack
#
##############################################################################
function FnDisableImcChassisLocatorLed([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcChassisLocatorLed -AdminState off -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcChassisLocatorLed -AdminState off -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcChassisLocatorLed -AdminState off -Force
	}
	else
	{
		$input | Set-ImcChassisLocatorLed -AdminState off 
	}
}
Set-Alias Disable-ImcChassisLocatorLed FnDisableImcChassisLocatorLed
##############################################################################
#.SYNOPSIS
# Reset the platform event filters to default
#
#.DESCRIPTION
# Reset the platform event filters to default
#
##############################################################################
function FnResetImcEventFilters([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcEventManagement -AdminAction reset-event-filters -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcEventManagement -AdminAction reset-event-filters -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcEventManagement -AdminAction reset-event-filters -Force
	}
	else
	{
		$input | Set-ImcEventManagement -AdminAction reset-event-filters 
	}
}
Set-Alias Reset-ImcEventFilters FnResetImcEventFilters
##############################################################################
#.SYNOPSIS
# Delete the LDAP CA certificate present on the Cisco IMC
#
#.DESCRIPTION
# Delete the LDAP CA certificate present on the Cisco IMC
#
##############################################################################
function FnRemoveImcLdapCACertificate([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcLdapCACertificate -AdminAction delete-ca-certificate -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcLdapCACertificate -AdminAction delete-ca-certificate -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcLdapCACertificate -AdminAction delete-ca-certificate -Force
	}
	else
	{
		$input | Set-ImcLdapCACertificate -AdminAction delete-ca-certificate 
	}
}
Set-Alias Remove-ImcLdapCACertificate FnRemoveImcLdapCACertificate
##############################################################################
#.SYNOPSIS
# Allows you to test the LDAP binding through a generic authentication failure and pam-debug.log file. This file contains the output where the binding steps are described in detail. You must enable the 'debug' mode in the Pluggable Authentication Module (PAM) to generate and view the pam-debug.log file.
#
#.DESCRIPTION
# Allows you to test the LDAP binding through a generic authentication failure and pam-debug.log file. This file contains the output where the binding steps are described in detail. You must enable the 'debug' mode in the Pluggable Authentication Module (PAM) to generate and view the pam-debug.log file.
#
##############################################################################
function FnTestImcLdapBinding([string]$User, [string]$Pwd, [switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcLdapCACertificate -AdminAction test-ldap-binding -User $User -Pwd $Pwd -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcLdapCACertificate -AdminAction test-ldap-binding -User $User -Pwd $Pwd -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcLdapCACertificate -AdminAction test-ldap-binding -User $User -Pwd $Pwd -Force
	}
	else
	{
		$input | Set-ImcLdapCACertificate -AdminAction test-ldap-binding 
	}
}
Set-Alias Test-ImcLdapBinding FnTestImcLdapBinding
##############################################################################
#.SYNOPSIS
# Activates the specified PID catalog in Cisco IMC.
#
#.DESCRIPTION
# Activates the specified PID catalog in Cisco IMC.
#
##############################################################################
function FnEnableImcPidCatalog([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcActivatePIDCatalog -AdminState trigger -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcActivatePIDCatalog -AdminState trigger -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcActivatePIDCatalog -AdminState trigger -Force
	}
	else
	{
		$input | Set-ImcActivatePIDCatalog -AdminState trigger 
	}
}
Set-Alias Enable-ImcPidCatalog FnEnableImcPidCatalog
##############################################################################
#.SYNOPSIS
# Activates the specified BIOS profile.
#
#.DESCRIPTION
# Activates the specified BIOS profile.
#
##############################################################################
function FnEnableImcBiosProfile([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcBiosProfile -AdminAction activate -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcBiosProfile -AdminAction activate -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcBiosProfile -AdminAction activate -Force
	}
	else
	{
		$input | Set-ImcBiosProfile -AdminAction activate 
	}
}
Set-Alias Enable-ImcBiosProfile FnEnableImcBiosProfile
##############################################################################
#.SYNOPSIS
# Deletes the specified BIOS profile.
#
#.DESCRIPTION
# Deletes the specified PID catalog in Cisco IMC.
#
##############################################################################
function FnRemoveImcBiosProfile([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcBiosProfile -AdminAction delete -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcBiosProfile -AdminAction delete -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcBiosProfile -AdminAction delete -Force
	}
	else
	{
		$input | Set-ImcBiosProfile -AdminAction delete 
	}
}
Set-Alias Remove-ImcBiosProfile FnRemoveImcBiosProfile
##############################################################################
#.SYNOPSIS
# Allows you to take a backup of the BIOS configuration by deleting the existing BIOS profile and creating a new one if backup exists, else creates a new backup file.
#
#.DESCRIPTION
# Allows you to take a backup of the BIOS configuration by deleting the existing BIOS profile and creating a new one if backup exists, else creates a new backup file. You can activate the backed up BIOS profile any time to go back to the previous configuration.
#
##############################################################################
function FnBackupImcBiosProfile([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcBiosProfileManagement -AdminAction backup -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcBiosProfileManagement -AdminAction backup -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcBiosProfileManagement -AdminAction backup -Force
	}
	else
	{
		$input | Set-ImcBiosProfileManagement -AdminAction backup 
	}
}
Set-Alias Backup-ImcBiosProfile FnBackupImcBiosProfile
##############################################################################
#.SYNOPSIS
# Clears the one time precision boot device in Cisco IMC.
#
#.DESCRIPTION
# Clears the one time precision boot device in Cisco IMC.
#
##############################################################################
function FnClearImcOneTimePrecisionBootDevice([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcOneTimePrecisionBootDevice -AdminAction clear-one-time-boot-device -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcOneTimePrecisionBootDevice -AdminAction clear-one-time-boot-device -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcOneTimePrecisionBootDevice -AdminAction clear-one-time-boot-device -Force
	}
	else
	{
		$input | Set-ImcOneTimePrecisionBootDevice -AdminAction clear-one-time-boot-device 
	}
}
Set-Alias Clear-ImcOneTimePrecisionBootDevice FnClearImcOneTimePrecisionBootDevice
##############################################################################
#.SYNOPSIS
# This allows you to delete the root CA certificate.
#
#.DESCRIPTION
# This allows you to delete the root CA certificate in Cisco IMC.
#
##############################################################################
function FnRemoveImcRootCACertificate([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-root-ca-certificate -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-root-ca-certificate -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-root-ca-certificate -Force
	}
	else
	{
		$input | Set-ImcKmipManagement -AdminAction delete-root-ca-certificate 
	}
}
Set-Alias Remove-ImcRootCACertificate FnRemoveImcRootCACertificate
##############################################################################
#.SYNOPSIS
# This allows you to delete the client certificate.
#
#.DESCRIPTION
# This allows you to delete the client certificate in Cisco IMC.
#
##############################################################################
function FnRemoveImcClientCertificate([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-certificate -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-certificate -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-certificate -Force
	}
	else
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-certificate 
	}
}
Set-Alias Remove-ImcClientCertificate FnRemoveImcClientCertificate
##############################################################################
#.SYNOPSIS
# This allows you to delete the client private key
#
#.DESCRIPTION
# This allows you to delete the client private key in Cisco IMC.
#
##############################################################################
function FnRemoveImcClientPrivateKey([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-private-key -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-private-key -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-private-key -Force
	}
	else
	{
		$input | Set-ImcKmipManagement -AdminAction delete-client-private-key 
	}
}
Set-Alias Remove-ImcClientPrivateKey FnRemoveImcClientPrivateKey
##############################################################################
#.SYNOPSIS
# This allows you to delete the KMIP login details.
#
#.DESCRIPTION
# This allows you to delete the KMIP login details.
#
##############################################################################
function FnClearImcKmipLogin([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcKmipServerLogin -AdminAction clear -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcKmipServerLogin -AdminAction clear -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcKmipServerLogin -AdminAction clear -Force
	}
	else
	{
		$input | Set-ImcKmipServerLogin -AdminAction clear 
	}
}
Set-Alias Clear-ImcKmipLogin FnClearImcKmipLogin
##############################################################################
#.SYNOPSIS
# This allows you to clear the KMIP server details.
#
#.DESCRIPTION
# This allows you to clear the KMIP server details.
#
##############################################################################
function FnClearImcKmipServer([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-ImcKmipServer   -AdminAction delete -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-ImcKmipServer   -AdminAction delete -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-ImcKmipServer   -AdminAction delete -Force
	}
	else
	{
		$input | Set-ImcKmipServer   -AdminAction delete 
	}
}
Set-Alias Clear-ImcKmipServer FnClearImcKmipServer
Set-Alias Acknowledge-ImcFault Confirm-ImcFault
Export-ModuleMember -Function * -Alias *

# SIG # Begin signature block
# MIIYygYJKoZIhvcNAQcCoIIYuzCCGLcCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCCd7zX9Ce4DF7s9
# rPMLJ0ugBGkwe60yVk6iVUmioDzxYqCCEx0wggQVMIIC/aADAgECAgsEAAAAAAEx
# icZQBDANBgkqhkiG9w0BAQsFADBMMSAwHgYDVQQLExdHbG9iYWxTaWduIFJvb3Qg
# Q0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UEAxMKR2xvYmFsU2ln
# bjAeFw0xMTA4MDIxMDAwMDBaFw0yOTAzMjkxMDAwMDBaMFsxCzAJBgNVBAYTAkJF
# MRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWdu
# IFRpbWVzdGFtcGluZyBDQSAtIFNIQTI1NiAtIEcyMIIBIjANBgkqhkiG9w0BAQEF
# AAOCAQ8AMIIBCgKCAQEAqpuOw6sRUSUBtpaU4k/YwQj2RiPZRcWVl1urGr/SbFfJ
# MwYfoA/GPH5TSHq/nYeer+7DjEfhQuzj46FKbAwXxKbBuc1b8R5EiY7+C94hWBPu
# TcjFZwscsrPxNHaRossHbTfFoEcmAhWkkJGpeZ7X61edK3wi2BTX8QceeCI2a3d5
# r6/5f45O4bUIMf3q7UtxYowj8QM5j0R5tnYDV56tLwhG3NKMvPSOdM7IaGlRdhGL
# D10kWxlUPSbMQI2CJxtZIH1Z9pOAjvgqOP1roEBlH1d2zFuOBE8sqNuEUBNPxtyL
# ufjdaUyI65x7MCb8eli7WbwUcpKBV7d2ydiACoBuCQIDAQABo4HoMIHlMA4GA1Ud
# DwEB/wQEAwIBBjASBgNVHRMBAf8ECDAGAQH/AgEAMB0GA1UdDgQWBBSSIadKlV1k
# sJu0HuYAN0fmnUErTDBHBgNVHSAEQDA+MDwGBFUdIAAwNDAyBggrBgEFBQcCARYm
# aHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wNgYDVR0fBC8w
# LTAroCmgJ4YlaHR0cDovL2NybC5nbG9iYWxzaWduLm5ldC9yb290LXIzLmNybDAf
# BgNVHSMEGDAWgBSP8Et/qC5FJK5NUPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOC
# AQEABFaCSnzQzsm/NmbRvjWek2yX6AbOMRhZ+WxBX4AuwEIluBjH/NSxN8RooM8o
# agN0S2OXhXdhO9cv4/W9M6KSfREfnops7yyw9GKNNnPRFjbxvF7stICYePzSdnno
# 4SGU4B/EouGqZ9uznHPlQCLPOc7b5neVp7uyy/YZhp2fyNSYBbJxb051rvE9ZGo7
# Xk5GpipdCJLxo/MddL9iDSOMXCo4ldLA1c3PiNofKLW6gWlkKrWmotVzr9xG2wSu
# kdduxZi61EfEVnSAR3hYjL7vK/3sbL/RlPe/UOB74JD9IBh4GCJdCC6MHKCX8x2Z
# faOdkdMGRE4EbnocIOM28LZQuTCCBMYwggOuoAMCAQICDCRUuH8eFFOtN/qheDAN
# BgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2ln
# biBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBUaW1lc3RhbXBpbmcgQ0EgLSBT
# SEEyNTYgLSBHMjAeFw0xODAyMTkwMDAwMDBaFw0yOTAzMTgxMDAwMDBaMDsxOTA3
# BgNVBAMMMEdsb2JhbFNpZ24gVFNBIGZvciBNUyBBdXRoZW50aWNvZGUgYWR2YW5j
# ZWQgLSBHMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANl4YaGWrhL/
# o/8n9kRge2pWLWfjX58xkipI7fkFhA5tTiJWytiZl45pyp97DwjIKito0ShhK5/k
# Ju66uPew7F5qG+JYtbS9HQntzeg91Gb/viIibTYmzxF4l+lVACjD6TdOvRnlF4RI
# shwhrexz0vOop+lf6DXOhROnIpusgun+8V/EElqx9wxA5tKg4E1o0O0MDBAdjwVf
# ZFX5uyhHBgzYBj83wyY2JYx7DyeIXDgxpQH2XmTeg8AUXODn0l7MjeojgBkqs2Iu
# YMeqZ9azQO5Sf1YM79kF15UgXYUVQM9ekZVRnkYaF5G+wcAHdbJL9za6xVRsX4ob
# +w0oYciJ8BUCAwEAAaOCAagwggGkMA4GA1UdDwEB/wQEAwIHgDBMBgNVHSAERTBD
# MEEGCSsGAQQBoDIBHjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
# aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMBYGA1UdJQEB/wQMMAoGCCsG
# AQUFBwMIMEYGA1UdHwQ/MD0wO6A5oDeGNWh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5j
# b20vZ3MvZ3N0aW1lc3RhbXBpbmdzaGEyZzIuY3JsMIGYBggrBgEFBQcBAQSBizCB
# iDBIBggrBgEFBQcwAoY8aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNl
# cnQvZ3N0aW1lc3RhbXBpbmdzaGEyZzIuY3J0MDwGCCsGAQUFBzABhjBodHRwOi8v
# b2NzcDIuZ2xvYmFsc2lnbi5jb20vZ3N0aW1lc3RhbXBpbmdzaGEyZzIwHQYDVR0O
# BBYEFNSHuI3m5UA8nVoGY8ZFhNnduxzDMB8GA1UdIwQYMBaAFJIhp0qVXWSwm7Qe
# 5gA3R+adQStMMA0GCSqGSIb3DQEBCwUAA4IBAQAkclClDLxACabB9NWCak5BX87H
# iDnT5Hz5Imw4eLj0uvdr4STrnXzNSKyL7LV2TI/cgmkIlue64We28Ka/GAhC4evN
# GVg5pRFhI9YZ1wDpu9L5X0H7BD7+iiBgDNFPI1oZGhjv2Mbe1l9UoXqT4bZ3hcD7
# sUbECa4vU/uVnI4m4krkxOY8Ne+6xtm5xc3NB5tjuz0PYbxVfCMQtYyKo9JoRbFA
# uqDdPBsVQLhJeG/llMBtVks89hIq1IXzSBMF4bswRQpBt3ySbr5OkmCCyltk5lXT
# 0gfenV+boQHtm/DDXbsZ8BgMmqAc6WoICz3pZpendR4PvyjXCSMN4hb6uvM0MIIE
# 2TCCA8GgAwIBAgIQIHWDPrOEReitUG9yJSUhQDANBgkqhkiG9w0BAQsFADB/MQsw
# CQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNV
# BAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxMDAuBgNVBAMTJ1N5bWFudGVjIENs
# YXNzIDMgU0hBMjU2IENvZGUgU2lnbmluZyBDQTAeFw0xNjExMDkwMDAwMDBaFw0x
# OTExMjYyMzU5NTlaMHExCzAJBgNVBAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlh
# MREwDwYDVQQHDAhTYW4gSm9zZTEcMBoGA1UECgwTQ2lzY28gU3lzdGVtcywgSW5j
# LjEcMBoGA1UEAwwTQ2lzY28gU3lzdGVtcywgSW5jLjCCASIwDQYJKoZIhvcNAQEB
# BQADggEPADCCAQoCggEBALLlVI4b5lGZi0ZHbXjIMlPDLvF6C7xjHJXtpR5zTvax
# nQNvjs+574jAE57yRjFxwmKqWqoyHKoSNO3YnlxjUk/buDk43m/QI1qtrs+14i4K
# ip3lmM2IOJeFsdLxpsPWSDdakvFqyz+H1W1266X42E5LtUk9KLqt/CP19tbA4kby
# EsSRjJfQ+ZvugUyk2NYTZ8GairJPr3ld9xls7GOI4JtCMfqv2elhUR50vM9Yec66
# il4GNgS4Af33Sz2O2XA3Ocz02km7XdS5sTIrHZSjpApQEmuugJBm2wYQ0lwOldNb
# MW61VA/vMsOR8Y0pAXb2hor9et2edDvY21GYQCo3kwUCAwEAAaOCAV0wggFZMAkG
# A1UdEwQCMAAwDgYDVR0PAQH/BAQDAgeAMCsGA1UdHwQkMCIwIKAeoByGGmh0dHA6
# Ly9zdi5zeW1jYi5jb20vc3YuY3JsMGEGA1UdIARaMFgwVgYGZ4EMAQQBMEwwIwYI
# KwYBBQUHAgEWF2h0dHBzOi8vZC5zeW1jYi5jb20vY3BzMCUGCCsGAQUFBwICMBkM
# F2h0dHBzOi8vZC5zeW1jYi5jb20vcnBhMBMGA1UdJQQMMAoGCCsGAQUFBwMDMFcG
# CCsGAQUFBwEBBEswSTAfBggrBgEFBQcwAYYTaHR0cDovL3N2LnN5bWNkLmNvbTAm
# BggrBgEFBQcwAoYaaHR0cDovL3N2LnN5bWNiLmNvbS9zdi5jcnQwHwYDVR0jBBgw
# FoAUljtT8Hkzl699g+8uK8zKt4YecmYwHQYDVR0OBBYEFMJofs4grwKJnUFm8/jC
# hhSUyVqAMA0GCSqGSIb3DQEBCwUAA4IBAQAoAoTeg6dizssRJJ92t06YFEdI+Ozj
# v12Rw8Y1Q/SJ7emwiFqFypQ9Y/lPS9LkgXxzIFWBXmCxFsPPpGQh0SG+56om+2oZ
# kj26E2pou2382mBSRW/GbbRPoGGDPQ4H2uf5Hk4ru4Aq/RGakJYk3B10u0vMZAYK
# oo5qHPDIDdTPTaYOlPzyh+7THSJWCOqlCvSQsd4bAAwarJO/db7QvIDVEt3tAsll
# /zOAWTQVFu8rNjoaXWHFo8J2JuFrvcAgzoAz9Nsl8f/X/ZonY4O1FVeA+TYIdfpI
# PJlkR1tsJi1tJJ74usKT5V4Z0dX8JVgJ4gnTtjCn8YC9xWihUPDapcjQMIIFWTCC
# BEGgAwIBAgIQPXjX+XZJYLJhffTwHsqGKjANBgkqhkiG9w0BAQsFADCByjELMAkG
# A1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQLExZWZXJp
# U2lnbiBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMjAwNiBWZXJpU2lnbiwg
# SW5jLiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MUUwQwYDVQQDEzxWZXJpU2ln
# biBDbGFzcyAzIFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0aG9yaXR5
# IC0gRzUwHhcNMTMxMjEwMDAwMDAwWhcNMjMxMjA5MjM1OTU5WjB/MQswCQYDVQQG
# EwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5
# bWFudGVjIFRydXN0IE5ldHdvcmsxMDAuBgNVBAMTJ1N5bWFudGVjIENsYXNzIDMg
# U0hBMjU2IENvZGUgU2lnbmluZyBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
# AQoCggEBAJeDHgAWryyx0gjE12iTUWAecfbiR7TbWE0jYmq0v1obUfejDRh3aLvY
# NqsvIVDanvPnXydOC8KXyAlwk6naXA1OpA2RoLTsFM6RclQuzqPbROlSGz9BPMpK
# 5KrA6DmrU8wh0MzPf5vmwsxYaoIV7j02zxzFlwckjvF7vjEtPW7ctZlCn0thlV8c
# cO4XfduL5WGJeMdoG68ReBqYrsRVR1PZszLWoQ5GQMWXkorRU6eZW4U1V9Pqk2Jh
# IArHMHckEU1ig7a6e2iCMe5lyt/51Y2yNdyMK29qclxghJzyDJRewFZSAEjM0/il
# fd4v1xPkOKiE1Ua4E4bCG53qWjjdm9sCAwEAAaOCAYMwggF/MC8GCCsGAQUFBwEB
# BCMwITAfBggrBgEFBQcwAYYTaHR0cDovL3MyLnN5bWNiLmNvbTASBgNVHRMBAf8E
# CDAGAQH/AgEAMGwGA1UdIARlMGMwYQYLYIZIAYb4RQEHFwMwUjAmBggrBgEFBQcC
# ARYaaHR0cDovL3d3dy5zeW1hdXRoLmNvbS9jcHMwKAYIKwYBBQUHAgIwHBoaaHR0
# cDovL3d3dy5zeW1hdXRoLmNvbS9ycGEwMAYDVR0fBCkwJzAloCOgIYYfaHR0cDov
# L3MxLnN5bWNiLmNvbS9wY2EzLWc1LmNybDAdBgNVHSUEFjAUBggrBgEFBQcDAgYI
# KwYBBQUHAwMwDgYDVR0PAQH/BAQDAgEGMCkGA1UdEQQiMCCkHjAcMRowGAYDVQQD
# ExFTeW1hbnRlY1BLSS0xLTU2NzAdBgNVHQ4EFgQUljtT8Hkzl699g+8uK8zKt4Ye
# cmYwHwYDVR0jBBgwFoAUf9Nlp8Ld7LvwMAnzQzn6Aq8zMTMwDQYJKoZIhvcNAQEL
# BQADggEBABOFGh5pqTf3oL2kr34dYVP+nYxeDKZ1HngXI9397BoDVTn7cZXHZVqn
# jjDSRFph23Bv2iEFwi5zuknx0ZP+XcnNXgPgiZ4/dB7X9ziLqdbPuzUvM1ioklbR
# yE07guZ5hBb8KLCxR/Mdoj7uh9mmf6RWpT+thC4p3ny8qKqjPQQB6rqTog5QIikX
# TIfkOhFf1qQliZsFay+0yQFMJ3sLrBkFIqBgFT/ayftNTI/7cmd3/SeUx7o1DohJ
# /o39KK9KEr0Ns5cF3kQMFfo2KwPcwVAB8aERXRTl4r0nS1S+K4ReD6bDdAUK75fD
# iSKxH3fzvc1D1PFMqT+1i4SvZPLQFCExggUDMIIE/wIBATCBkzB/MQswCQYDVQQG
# EwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5
# bWFudGVjIFRydXN0IE5ldHdvcmsxMDAuBgNVBAMTJ1N5bWFudGVjIENsYXNzIDMg
# U0hBMjU2IENvZGUgU2lnbmluZyBDQQIQIHWDPrOEReitUG9yJSUhQDANBglghkgB
# ZQMEAgEFAKCBhDAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJ
# AzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMC8G
# CSqGSIb3DQEJBDEiBCBQr37fE/ywcjkUJgDcU/sXqeY7OqAQB0redNzZNXJatTAN
# BgkqhkiG9w0BAQEFAASCAQCsKYTyT53jxsdW2kmiekbt5P1zwXWkkSbWY8pCLV79
# pV3aeCRtu6cRJfoB8RgCE0zylzdJbwy0gHJPwBDQHtCYCv6R3+X3vFQnk4gsgM8G
# wsxrnPExis6/wBuk3L95b3GerZXGU6VJoBeoJXGNyKc86PQ3uqMMGIZqzZBv/cgF
# oE1SrHeWkLTIYlQWXZpp+dfcqqt2eT4VdR3571n9NRRsIUN11LYo8Vzf7Ih0BpZV
# mn2PEDd8KQ8L1JsWqgDvJhbLoyrf3u070EwMxFhGmlDF8sOcfYOqGJTkTrqlTQpZ
# enYwvmXwX3J6MYHCpVMoaOKqSXX3Tlt7unZbQHoIPqVSoYICuTCCArUGCSqGSIb3
# DQEJBjGCAqYwggKiAgEBMGswWzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
# bFNpZ24gbnYtc2ExMTAvBgNVBAMTKEdsb2JhbFNpZ24gVGltZXN0YW1waW5nIENB
# IC0gU0hBMjU2IC0gRzICDCRUuH8eFFOtN/qheDANBglghkgBZQMEAgEFAKCCAQww
# GAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTgwNjE1
# MTUwNDM5WjAvBgkqhkiG9w0BCQQxIgQgLiG5ImQhkq+/OpUAO7/AQUEy+LAFr7R/
# U2wG4/agIXYwgaAGCyqGSIb3DQEJEAIMMYGQMIGNMIGKMIGHBBQ+x2bV1NRy4hsf
# IUNSHDG3kNlLaDBvMF+kXTBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFs
# U2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBUaW1lc3RhbXBpbmcgQ0Eg
# LSBTSEEyNTYgLSBHMgIMJFS4fx4UU603+qF4MA0GCSqGSIb3DQEBAQUABIIBAJaB
# uIt+zcbKNThXgXHmASmcSFeJ4G6aFrPDZtdJ71Ma3HebUJ74vRGbdU7GBbinE1/u
# +hZn3gJlvIn98ipI2dhel2cD1X4GgPMnTmR+3G00quuITov0oCmFAr6axY19rN0q
# aZ7RXlaBk3UrmSnnS1Y31vnw0lPf7eV4Xl+Wr/im+6jdMv5bjHBmMX7DvZa9pnJf
# CEzKpyrwiEJlc/EG5mqSjSr8ZETN7ILdUsQCfvcGXuvBl6Iukk1j0t6ObPLbXB5e
# 9CTp52j2qVbyVXwiI1EGF3wmkFGY33SnSe30TI5TGlPZNYh7hnsphD485rMSIjVz
# PyW8qnmN7OKIomfRs6w=
# SIG # End signature block
