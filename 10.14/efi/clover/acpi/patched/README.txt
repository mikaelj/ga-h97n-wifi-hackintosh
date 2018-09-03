ga-h97n-wifi.aml

This SSDT is not standalone, it works with
the settings in /efi/clover/config.plist

Summary

XOSI method (RehabMan)
New/renamed devices: ARPT, GIGE, HDAU, MCHC, SATA
Add "compatible" device properties for: LPCB, SATA
Add "layout-id" device property for HDEF
New dummy EC device for AppleBusPowerController
Add SBUS device properties and BUS0 device (Master Chief)
New _STA, _PTS and _WAK objects

Sources

https://github.com/RehabMan/OS-X-USB-Inject-All/blob/master/SSDT-XOSI.dsl
https://www.insanelymac.com/forum/topic/188920-master-chiefs-p5k-pro-acpi-warfare/
