EFI System Partition: directory structure

Directories are shown here in UPPERCASE, it's not a requirement

└── EFI
    ├── BOOT
    │   └── bootx64.efi
    └── CLOVER
        ├── cloverx64.efi
        ├── ACPI
        │   └── PATCHED
        │       └── ga-h97n-wifi.aml ←
        ├── config.plist ←
        ├── DRIVERS64UEFI
        │   ├── ApfsDriverLoader-64.efi
        │   ├── AptioMemoryFix-64.efi
        │   ├── FSInject-64.efi
        │   └── hfsplus.efi ←
        ├── KEXTS
        │   └── OTHER
        │       ├── AppleALC.kext
        │       ├── FakeSMC.kext or VirtualSMC.kext
        │       ├── Lilu.kext
        │       ├── RealtekRTL8111.kext or AtherosE2200Ethernet.kext *
        │       └── USBPortInjector.kext ←
        │       └── WhatEvergreen.kext
        ├── MISC
        └── TOOLS
            └── Shell64U.efi


←   A file in this repository

*   Rev 1.0 = Atheros, Rev 1.1 = Realtek
