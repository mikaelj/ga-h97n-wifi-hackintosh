# GA-H97N-WIFI Hackintosh

## About

Clover configuration for running macOS on the Gigabyte GA-H97N-WIFI motherboard. There is a guide [here](https://hackintosher.com/forums/thread/guide-10-13-h97n-wifi-hackintosh.481/).

<p align="center">
<img alt="H97N-WIFI Box" src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/h97n-wifi.png" width="72%">
</p>

- Discrete AMD or NVIDIA graphics
- Native EFI booting with Clover

Intel integrated graphics will be disabled with these settings.

<br />
<br />

## Firmware Settings

<p align="center">
<img alt="Aptio UEFI BIOS Screenshot" src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/bios.png" width="58%">
</p>

Make the following changes after loading Optimized Defaults.

- Peripherals -> XHCI Mode -> "Enabled"
- Peripherals -> Intel Processor Graphics -> "Disabled"

<br />
<br />

## Kernel Extensions

<p align="center">
<img alt="GA-H97N-WIFI Hackintosh Kexts" src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/kexts.png" />
</p>

#### AppleALC.kext

- Digital and analog audio support from vit9696

AppleALC.kext is a Lilu plugin and does nothing without Lilu.kext.

#### FakeSMC.kext or VirtualSMC.kext

- Choose one of these, SMC emulation is mandatory

#### Lilu.kext

- Arbitrary kext, library, and program patching from vit9696
- Required by AppleALC.kext
- Enables additional features of VirtualSMC.kext

If you are not using any Lilu plug-ins then you do not need Lilu.kext.

#### AtherosE220Ethernet.kext, IntelMausiEthernet.kext or RealtekRTL8111.kext

- Ethernet kexts from Mieze
- Use one of these depending on your hardware

#### USBPortInjector.kext

- Codeless injector kext for the XHC device USB ports

<br />
<br />

## Wi-Fi

- The Intel mini-PCIe wireless card that comes installed in the H97N-WIFI is not compatible with macOS
- If you want Wi-Fi, how you configure it will depend on the choice of replacement card

<br />
<br />

## Downloads

#### Clover

[https://sourceforge.net/projects/cloverefiboot/files/](https://sourceforge.net/projects/cloverefiboot/files/)

#### This repository

[https://github.com/vulgo/ga-h97n-wifi-hackintosh/archive/master.zip](https://github.com/vulgo/ga-h97n-wifi-hackintosh/archive/master.zip)

#### AppleALC.kext

[https://github.com/acidanthera/AppleALC/releases](https://github.com/acidanthera/AppleALC/releases)

#### FakeSMC.kext

[https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/](https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/)

#### VirtualSMC.kext

[https://github.com/acidanthera/VirtualSMC/releases](https://github.com/acidanthera/VirtualSMC/releases)

#### Lilu.kext

[https://github.com/acidanthera/Lilu/releases](https://github.com/acidanthera/Lilu/releases)

#### AtherosE220Ethernet.kext, IntelMausiEthernet.kext or RealtekRTL8111.kext

[https://www.insanelymac.com/forum/files/category/5-lan-and-wireless/](https://www.insanelymac.com/forum/files/category/5-lan-and-wireless/)


