rem host ID = 005056ab7c92

@echo off

C:
cd "C:\Program Files\Oracle\VirtualBox"

VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVendor" "Phoenix Technologies LTD"
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSVersion" "6.00"
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseDate" "07/31/2013"
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseMajor" 6
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSReleaseMinor" 0
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSFirmwareMajor" 6
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiBIOSFirmwareMinor" 0
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiSystemVendor" "VMware, Inc."
VBoxManage setextradata NSVPX-ESX "VBoxInternal/Devices/pcbios/0/Config/DmiSystemProduct" "VMware Virtual Platform"

vboxmanage getextradata NSVPX-ESX enumerate
pause