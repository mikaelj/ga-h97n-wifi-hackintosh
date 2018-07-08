# GA-H97N-WIFI Hackintosh

## About

Clover configuration for running macOS on the Gigabyte GA-H97N-WIFI motherboard.

<p align="center">
<img alt="H97N-WIFI Hackintosh" src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/h97n-wifi.png" width="72%">
</p>

- Discrete AMD or NVIDIA graphics
- Native EFI booting with Clover

Intel integrated graphics will be disabled with these settings.

<br />
<br />

## Firmware Settings

<p align="center">
<img alt="H97N WIFI" src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/bios.png" width="58%">
</p>

Make the following changes after loading Optimized Defaults.

- Peripherals -> XHCI Mode -> "Enabled"
- Peripherals -> Intel Processor Graphics -> "Disabled"

Not using onboard audio? Disable it.

- Peripherals -> Audio Controller -> "Disabled"

<br />
<br />

## Kernel Extensions

<p align="center">
<img alt="Hackintosh kexts for GA-H97N-WIFI" src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/kexts.png" />
</p>

#### AppleALC.kext

- Enables onboard Realtek audio
- Enables additional NVIDIA HDMI audio devices

AppleALC.kext is a plug-in of Lilu.kext. If you are not using NVIDIA graphics, and not using onboard audio then you do not need AppleALC.kext.

#### FakeSMC.kext

- FakeSMC.kext is absolutely necessary

#### Lilu.kext

- Required by AppleALC.kext

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

#### Lilu.kext

[https://github.com/acidanthera/Lilu/releases](https://github.com/acidanthera/Lilu/releases)

#### AtherosE220Ethernet.kext, IntelMausiEthernet.kext or RealtekRTL8111.kext

[https://www.insanelymac.com/forum/files/category/5-lan-and-wireless/](https://www.insanelymac.com/forum/files/category/5-lan-and-wireless/)


