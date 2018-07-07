ga-h97n-wifi.aml

This SSDT is not standalone, it works with
the settings in /efi/clover/config.plist

Summary

XOSI method by RehabMan
Redefine devices for table-dropped TZ00 and TZ01
Add "compatible" device property for LPCB
Add "compatible" device property for SATA
Define some SATA ports
Add MCHC device
Add HDAU device and HDMI audio properties
Add "layout-id" device property for HDEF
Rename RP04.PXSX to GIGE
Rename RP05.PXSX to ARPT
Add dummy EC device for AppleBusPowerController
Add SBUS device properties and BUS0 device
Define or redefine many _STA objects

Sources

https://github.com/RehabMan/OS-X-USB-Inject-All/blob/master/SSDT-XOSI.dsl
