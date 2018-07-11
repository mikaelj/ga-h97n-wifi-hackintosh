ga-h97n-wifi.aml

This SSDT is not standalone, it works with
the settings in /efi/clover/config.plist

Summary

XOSI method (RehabMan)
New/renamed devices: ARPT GIGE HDAU MCHC SATA
New dummy EC device for AppleBusPowerController
Add "HDMI audio" properties for GFX0 and HDAU
Add "layout-id" device property for HDEF
Add "compatible" device property for LPCB
Add "compatible" device property for SATA
Add SBUS device properties and BUS0 device (Master Chief)
New _STA objects
New _PTS and _WAK methods 

Sources

https://github.com/RehabMan/OS-X-USB-Inject-All/blob/master/SSDT-XOSI.dsl
https://www.insanelymac.com/forum/topic/188920-master-chiefs-p5k-pro-acpi-warfare/
