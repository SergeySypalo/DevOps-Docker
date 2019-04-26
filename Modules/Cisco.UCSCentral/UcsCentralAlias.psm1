Set-Alias Compare-UcsCentralMo Compare-UcsCentralManagedObject
Set-Alias Sync-UcsCentralMo Sync-UcsCentralManagedObject
Set-Alias Get-UcsCentralMo Get-UcsCentralManagedObject
Set-Alias Remove-UcsCentralMo Remove-UcsCentralManagedObject
Set-Alias Add-UcsCentralMo Add-UcsCentralManagedObject
Set-Alias Set-UcsCentralMo Set-UcsCentralManagedObject
Set-Alias Acknowledge-UcsCentralFault Confirm-UcsCentralFault
Set-Alias Get-UcsCentralUcsDomain Get-UcsCentralExtpolClient
Set-Alias Associate-UcsCentralServiceProfile Connect-UcsCentralServiceProfile
Set-Alias Disassociate-UcsCentralServiceProfile Disconnect-UcsCentralServiceProfile
##############################################################################
#.SYNOPSIS
# Remove a Fex
#
#.DESCRIPTION
# Remove a Fex
#
##############################################################################
function FnRemoveUcsCentralFex([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState remove -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState remove -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState remove -Force
	}
	else
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState remove 
	}
}
Set-Alias Remove-UcsCentralFex FnRemoveUcsCentralFex
##############################################################################
#.SYNOPSIS
# Decommission a Fex
#
#.DESCRIPTION
# Decommission a Fex
#
##############################################################################
function FnDecommissionUcsCentralFex([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState decommission -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState decommission -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState decommission -Force
	}
	else
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState decommission 
	}
}
Set-Alias Decommission-UcsCentralFex FnDecommissionUcsCentralFex
##############################################################################
#.SYNOPSIS
# Recommission a Fex
#
#.DESCRIPTION
# Recommission a Fex
#
##############################################################################
function FnRecommissionUcsCentralFex([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled -Force
	}
	else
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled 
	}
}
Set-Alias Recommission-UcsCentralFex FnRecommissionUcsCentralFex
##############################################################################
#.SYNOPSIS
# Acknowledge a Fex
#
#.DESCRIPTION
# Acknowledge a Fex
#
##############################################################################
function FnAcknowledgeUcsCentralFex([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState re-acknowledge -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState re-acknowledge -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState re-acknowledge -Force
	}
	else
	{
		$input | Set-UcsCentralEquipmentFexOperation -AdminState re-acknowledge 
	}
}
Set-Alias Acknowledge-UcsCentralFex FnAcknowledgeUcsCentralFex
##############################################################################
#.SYNOPSIS
# Decommission a ServerUnit
#
#.DESCRIPTION
# Decommission a ServerUnit
#
##############################################################################
function FnDecommissionUcsCentralServerUnit([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission 
	}
}
Set-Alias Decommission-UcsCentralServerUnit FnDecommissionUcsCentralServerUnit
##############################################################################
#.SYNOPSIS
# Recommission a ServerUnit
#
#.DESCRIPTION
# Recommission a ServerUnit
#
##############################################################################
function FnRecommissionUcsCentralServerUnit([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Force
	}
	else
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled 
	}
}
Set-Alias Recommission-UcsCentralServerUnit FnRecommissionUcsCentralServerUnit
##############################################################################
#.SYNOPSIS
# Acknowledge a ServerUnit
#
#.DESCRIPTION
# Acknowledge a ServerUnit
#
##############################################################################
function FnAcknowledgeUcsCentralServerUnit([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover 
	}
}
Set-Alias Acknowledge-UcsCentralServerUnit FnAcknowledgeUcsCentralServerUnit
##############################################################################
#.SYNOPSIS
# Remove a ServerUnit
#
#.DESCRIPTION
# Remove a ServerUnit
#
##############################################################################
function FnRemoveUcsCentralCartridge([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputeCartridgeOperation -Lc remove -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputeCartridgeOperation -Lc remove -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputeCartridgeOperation -Lc remove -Force
	}
	else
	{
		$input | Set-UcsCentralComputeCartridgeOperation -Lc remove 
	}
}
Set-Alias Remove-UcsCentralCartridge FnRemoveUcsCentralCartridge
##############################################################################
#.SYNOPSIS
# Decommission a Chassis
#
#.DESCRIPTION
# Decommission a Chassis
#
##############################################################################
function FnDecommissionUcsCentralChassis([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState decommission -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState decommission -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState decommission -Force
	}
	else
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState decommission 
	}
}
Set-Alias Decommission-UcsCentralChassis FnDecommissionUcsCentralChassis
##############################################################################
#.SYNOPSIS
# Recommission a Chassis
#
#.DESCRIPTION
# Recommission a Chassis
#
##############################################################################
function FnRecommissionUcsCentralChassis([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled -Force
	}
	else
	{
		$input | Set-UcsCentralFabricSwChPhEpOperation -AdminState enabled 
	}
}
Set-Alias Recommission-UcsCentralChassis FnRecommissionUcsCentralChassis
##############################################################################
#.SYNOPSIS
# Acknowledge a Chassis
#
#.DESCRIPTION
# Acknowledge a Chassis
#
##############################################################################
function FnAcknowledgeUcsCentralChassis([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState re-acknowledge -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState re-acknowledge -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState re-acknowledge -Force
	}
	else
	{
		$input | Set-UcsCentralEquipmentChassisOperation -AdminState re-acknowledge 
	}
}
Set-Alias Acknowledge-UcsCentralChassis FnAcknowledgeUcsCentralChassis
##############################################################################
#.SYNOPSIS
# Remove a RackUnit
#
#.DESCRIPTION
# Remove a RackUnit
#
##############################################################################
function FnRemoveUcsCentralRackUnit([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove 
	}
}
Set-Alias Remove-UcsCentralRackUnit FnRemoveUcsCentralRackUnit
##############################################################################
#.SYNOPSIS
# Decommission a RackUnit
#
#.DESCRIPTION
# Decommission a RackUnit
#
##############################################################################
function FnDecommissionUcsCentralRackUnit([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission 
	}
}
Set-Alias Decommission-UcsCentralRackUnit FnDecommissionUcsCentralRackUnit
##############################################################################
#.SYNOPSIS
# Recommission a RackUnit
#
#.DESCRIPTION
# Recommission a RackUnit
#
##############################################################################
function FnRecommissionUcsCentralRackUnit([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Force
	}
	else
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled 
	}
}
Set-Alias Recommission-UcsCentralRackUnit FnRecommissionUcsCentralRackUnit
##############################################################################
#.SYNOPSIS
# Acknowledge a RackUnit
#
#.DESCRIPTION
# Acknowledge a RackUnit
#
##############################################################################
function FnAcknowledgeUcsCentralRackUnit([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover 
	}
}
Set-Alias Acknowledge-UcsCentralRackUnit FnAcknowledgeUcsCentralRackUnit
##############################################################################
#.SYNOPSIS
# Decommission a Blade
#
#.DESCRIPTION
# Decommission a Blade
#
##############################################################################
function FnDecommissionUcsCentralBlade([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc decommission 
	}
}
Set-Alias Decommission-UcsCentralBlade FnDecommissionUcsCentralBlade
##############################################################################
#.SYNOPSIS
# Recommission a Blade
#
#.DESCRIPTION
# Recommission a Blade
#
##############################################################################
function FnRecommissionUcsCentralBlade([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled -Force
	}
	else
	{
		$input | Set-UcsCentralFabricComputePhEpOperation -AdminState enabled 
	}
}
Set-Alias Recommission-UcsCentralBlade FnRecommissionUcsCentralBlade
##############################################################################
#.SYNOPSIS
# Acknowledge a Blade
#
#.DESCRIPTION
# Acknowledge a Blade
#
##############################################################################
function FnAcknowledgeUcsCentralBlade([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc rediscover 
	}
}
Set-Alias Acknowledge-UcsCentralBlade FnAcknowledgeUcsCentralBlade
##############################################################################
#.SYNOPSIS
# Remove a Blade
#
#.DESCRIPTION
# Remove a Blade
#
##############################################################################
function FnRemoveUcsCentralBlade([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove -Force
	}
	else
	{
		$input | Set-UcsCentralComputePhysicalOperation -Lc remove 
	}
}
Set-Alias Remove-UcsCentralBlade FnRemoveUcsCentralBlade
##############################################################################
#.SYNOPSIS
# Acknowledge a Slot
#
#.DESCRIPTION
# Acknowledge a Slot
#
##############################################################################
function FnAcknowledgeUcsCentralSlot([switch]$Xml, [switch]$Force)
{
	if($Xml.IsPresent -and $Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputeSlotEpOperation -AdminState reacknowledge -Xml -Force
	}
	elseif($Xml.IsPresent)
	{
		$input | Set-UcsCentralFabricComputeSlotEpOperation -AdminState reacknowledge -Xml
	}
	elseif($Force.IsPresent)
	{
		$input | Set-UcsCentralFabricComputeSlotEpOperation -AdminState reacknowledge -Force
	}
	else
	{
		$input | Set-UcsCentralFabricComputeSlotEpOperation -AdminState reacknowledge 
	}
}
Set-Alias Acknowledge-UcsCentralSlot FnAcknowledgeUcsCentralSlot
Export-ModuleMember -Function * -Alias *

# SIG # Begin signature block
# MIIYygYJKoZIhvcNAQcCoIIYuzCCGLcCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCA563WDp5Gy8Uk/
# cUvu2O1nFLkcpTKGh2bPoMi+6YW0kaCCEx0wggQVMIIC/aADAgECAgsEAAAAAAEx
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
# CSqGSIb3DQEJBDEiBCAT8rjIyfSUHUKPJ+XyE8oTF9Ek+qUY3HSOVH/3eBV5ZzAN
# BgkqhkiG9w0BAQEFAASCAQCSANrMo3JaWB6cunS5in6YRhA8kQRPF1dCpmOCDVDv
# NqIDmzUlwBgiYcyk0Ij5CC5QTAf603hnsStC53yc2NS/H7fzEBDNFAx+SDJeWhsa
# nNQOG7ej9SzD1FbCOCI/ViW+jYIhX4PpVV8TlGB1WTOfxifCZf2H60IOhoLH1PRJ
# q+3X0SNC5YfDuvj69yxx+l7gUZ9hmu92ScVls5hqwk5vEBC9PXjCD0WwvqrJ4pDX
# fKngvsTP2d7EWISzxyNXdhgJ4QKFGcQGjMt826MTSPPTOZF9MulV1ddPsewKE96n
# 0iiID4NabYJyshRuXUDFodecdvM2HmBpvlN/S7qrsB4xoYICuTCCArUGCSqGSIb3
# DQEJBjGCAqYwggKiAgEBMGswWzELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
# bFNpZ24gbnYtc2ExMTAvBgNVBAMTKEdsb2JhbFNpZ24gVGltZXN0YW1waW5nIENB
# IC0gU0hBMjU2IC0gRzICDCRUuH8eFFOtN/qheDANBglghkgBZQMEAgEFAKCCAQww
# GAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTgwNjE1
# MTUwNTU2WjAvBgkqhkiG9w0BCQQxIgQgITyMQGEdZ4wgykSSsd2SMDZt8vk855b+
# fyd6VIk3SycwgaAGCyqGSIb3DQEJEAIMMYGQMIGNMIGKMIGHBBQ+x2bV1NRy4hsf
# IUNSHDG3kNlLaDBvMF+kXTBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFs
# U2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBUaW1lc3RhbXBpbmcgQ0Eg
# LSBTSEEyNTYgLSBHMgIMJFS4fx4UU603+qF4MA0GCSqGSIb3DQEBAQUABIIBAC1u
# MKjPnR9pzVfJxD6vlKGckDYTobofIcOC7noOAL8jMruXXTDb2BsiY06cTVJ9s35V
# bvnBzTVN+0cHW+0IsmVvzxD7ocAKQsuQif0Sb5HRGYIELywqN1aElqjacJ9bC/Yi
# xfy5VDdDzZ8S0ek4dXtscfrsZqrHmkhqtFIrxkZMyZTrZ1p30kDP3cbnL+MQ4xJL
# yEgEIXwd85kEKO6L4MGX7E/1GniuvfDwUGexJ2IEnmJ26nd+KQ06zKjyli+nRffB
# qhlR1pNJ5pcJ550vM7jsezzXg8D6IcKn9L89pukvTS3WncoGCCZ1os45UaM5O+p4
# 4x2gW0NESS+du7BT0jk=
# SIG # End signature block
