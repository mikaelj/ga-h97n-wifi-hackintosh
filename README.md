# GA-H97N-WIFI Hackintosh

## About

Clover configuration for running macOS on a GA-H97N-WIFI.

![GA-H97N-WIFI](https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/h97n-wifi.png)

Use for

- Discrete graphics AMD/NVIDIA
- Native EFI booting with Clover

Do not use for

- Integrated graphics
- Legacy, BIOS, CSM etc. booting

<br />
<br />

## Firmware Settings

<p align="center">
<img src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/bios.png" width="66%">
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
<img src="https://github.com/vulgo/ga-h97n-wifi-hackintosh/raw/master/Images/kexts.png" />
</p>

#### AppleALC.kext

- Enables onboard Realtek audio
- Enables additional NVIDIA HDMI audio devices

AppleALC.kext is a plug-in of Lilu.kext. If you are not using NVIDIA graphics, and not using onboard audio then you do not need AppleALC.kext.

#### FakeSMC.kext

- FakeSMC.kext is absolutely necessary

#### USBPortInjector.kext

- Codeless injector kext for the XHC device USB ports

#### Lilu.kext

- Required by AppleALC.kext

If you are not using any Lilu plug-ins then you do not need Lilu.kext.

#### AtherosE220Ethernet.kext, IntelMausiEthernet.kext or RealtekRTL8111.kext

- Ethernet kexts from Mieze
- Use one of these depending on your hardware

<br />
<br />

## Wi-Fi

- The Intel mini-PCIe wireless card that comes installed in this motherboard is not compatible with macOS
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


