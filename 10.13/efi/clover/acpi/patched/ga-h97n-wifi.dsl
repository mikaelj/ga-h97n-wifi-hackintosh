/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180313 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ga-h97n-wifi.aml, Wed Jul 11 23:28:20 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000B79 (2937)
 *     Revision         0x01
 *     Checksum         0x37
 *     OEM ID           "vulgo"
 *     OEM Table ID     "h97nwifi"
 *     OEM Revision     0x0000FFFF (65535)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180313 (538444563)
 */
DefinitionBlock ("", "SSDT", 1, "vulgo", "h97nwifi", 0x0000FFFF)
{
    External (_SB_.LID0, DeviceObj)
    External (_SB_.MEM2, DeviceObj)
    External (_SB_.PAGD, DeviceObj)
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.ADSP, DeviceObj)
    External (_SB_.PCI0.B0D3, DeviceObj)
    External (_SB_.PCI0.B0D4, DeviceObj)
    External (_SB_.PCI0.DOCK, DeviceObj)
    External (_SB_.PCI0.EHC1, DeviceObj)
    External (_SB_.PCI0.EHC2, DeviceObj)
    External (_SB_.PCI0.GPI0, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.CWDT, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT0, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT2, DeviceObj)
    External (_SB_.PCI0.LPCB.LDR2, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2M, DeviceObj)
    External (_SB_.PCI0.LPCB.RMSC, DeviceObj)
    External (_SB_.PCI0.LPCB.SIO1, DeviceObj)
    External (_SB_.PCI0.LPCB.SPTS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.SWAK, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.UAR1, DeviceObj)
    External (_SB_.PCI0.OFX0, DeviceObj)
    External (_SB_.PCI0.P0P2, DeviceObj)
    External (_SB_.PCI0.P0P2.GFX0, DeviceObj)
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG2, DeviceObj)
    External (_SB_.PCI0.RP02, DeviceObj)
    External (_SB_.PCI0.RP03, DeviceObj)
    External (_SB_.PCI0.RP04, DeviceObj)
    External (_SB_.PCI0.RP04.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (_SB_.PCI0.RP06, DeviceObj)
    External (_SB_.PCI0.RP07, DeviceObj)
    External (_SB_.PCI0.RP08, DeviceObj)
    External (_SB_.PCI0.SAT0, DeviceObj)
    External (_SB_.PCI0.SAT0.NVM0, DeviceObj)
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.SDHC, DeviceObj)
    External (_SB_.PCI0.SDMA, DeviceObj)
    External (_SB_.PCI0.SIRC, DeviceObj)
    External (_SB_.PCI0.SPI0, DeviceObj)
    External (_SB_.PCI0.SPI1, DeviceObj)
    External (_SB_.PCI0.TPMX, DeviceObj)
    External (_SB_.PCI0.UA00, DeviceObj)
    External (_SB_.PCI0.UA01, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)
    External (DFUD, DeviceObj)
    External (NFC_, DeviceObj)

    Method (OOSI, 1, NotSerialized)
    {
        Local0 = Package (0x08)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2009", 
                "Windows 2012", 
                "Windows 2013"
            }
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Scope (_SB.PCI0.P0P2)
    {
        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
        }
    }

    Scope (_SB.PCI0.RP04)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (GIGE)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Scope (_SB.PCI0.RP05)
    {
        Scope (PXSX)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (ARPT)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    Device (_SB.PCI0.SATA)
    {
        Name (_ADR, 0x001F0002)  // _ADR: Address
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x02)
            {
                "compatible", 
                "pci8086,8c83"
            })
        }
    }

    Scope (_SB.PCI0.SAT0)
    {
        Name (_STA, Zero)  // _STA: Status
        Scope (NVM0)
        {
            Name (_STA, Zero)  // _STA: Status
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg2 == Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                             // .
                })
            }

            Return (Package (0x02)
            {
                "compatible", 
                "pci8086,9c43"
            })
        }

        Device (EC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_STA, One)  // _STA: Status
            Name (_UID, One)  // _UID: Unique ID
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x23, 
                0x03
            })
        }
    }

    Scope (_SB.PCI0.SBUS)
    {
        Device (BUS0)
        {
            Name (_CID, "smbus")  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Device (BLC0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_STA, 0x0F)  // _STA: Status
                Name (_CID, "smbus-blc")  // _CID: Compatible ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }

                    Return (Package (0x02)
                    {
                        "address", 
                        0x2C
                    })
                }
            }
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.LPCB.SPTS ()
        }
    }

    Method (_WAK, 1, Serialized)  // _WAK: Wake
    {
        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            \_SB.PCI0.LPCB.SWAK ()
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Scope (\)
    {
        Scope (DFUD)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (NFC)
        {
            Name (_STA, Zero)  // _STA: Status
        }
    }

    Scope (_SB)
    {
        Scope (LID0)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (MEM2)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (PAGD)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Device (TZ00)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_STA, Zero)  // _STA: Status
        }

        Device (TZ01)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_STA, Zero)  // _STA: Status
        }
    }

    Scope (_SB.PCI0.ADSP)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.B0D3)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.B0D4)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.DOCK)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.EHC1)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.EHC2)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.GPI0)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.I2C0)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.I2C1)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.LPCB)
    {
        Scope (CWDT)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (H_EC)
        {
            Name (_STA, Zero)  // _STA: Status
            Scope (BAT0)
            {
                Name (_STA, Zero)  // _STA: Status
            }

            Scope (BAT1)
            {
                Name (_STA, Zero)  // _STA: Status
            }

            Scope (BAT2)
            {
                Name (_STA, Zero)  // _STA: Status
            }
        }

        Scope (LDR2)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (PS2K)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (PS2M)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (RMSC)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (SIO1)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (UAR1)
        {
            Name (_STA, Zero)  // _STA: Status
        }
    }

    Scope (_SB.PCI0.OFX0)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.PEG1)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.PEG2)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.RP02)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.RP03)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.RP06)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.RP07)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.RP08)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.SAT1)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.SDHC)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.SDMA)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.SIRC)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.SPI0)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.SPI1)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.TPMX)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.UA00)
    {
        Name (_STA, Zero)  // _STA: Status
    }

    Scope (_SB.PCI0.UA01)
    {
        Name (_STA, Zero)  // _STA: Status
    }
}

