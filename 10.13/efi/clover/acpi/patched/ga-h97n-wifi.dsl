/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180313 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ga-h97n-wifi.aml, Sun Jul  8 11:53:07 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000A8F (2703)
 *     Revision         0x01
 *     Checksum         0x5E
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
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT0, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT1, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT2, DeviceObj)
    External (_SB_.PCI0.LPCB.LDR2, DeviceObj)
    External (_SB_.PCI0.LPCB.LDRC, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.LPCB.PS2M, DeviceObj)
    External (_SB_.PCI0.LPCB.RMSC, DeviceObj)
    External (_SB_.PCI0.LPCB.SIO1, DeviceObj)
    External (_SB_.PCI0.LPCB.SPTS, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.SWAK, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.UAR1, DeviceObj)
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
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.SATA.NVM0, DeviceObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.SDHC, DeviceObj)
    External (_SB_.PCI0.SDMA, DeviceObj)
    External (_SB_.PCI0.SIRC, DeviceObj)
    External (_SB_.PCI0.SPI0, DeviceObj)
    External (_SB_.PCI0.SPI1, DeviceObj)
    External (_SB_.PCI0.TPMX, DeviceObj)
    External (_SB_.PCI0.UA00, DeviceObj)
    External (_SB_.PCI0.UA01, DeviceObj)
    External (_SB_.PCI0.XHC_.XSEL, MethodObj)    // 0 Arguments
    External (DFUD, DeviceObj)
    External (NFC_, DeviceObj)

    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x07)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2009", 
                "Windows 2012"
            }
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

    Scope (\_TZ)
    {
        ThermalZone (TZ00)
        {
        }

        ThermalZone (TZ01)
        {
        }
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
        Scope (GFX0)
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

                Return (Package (0x0E)
                {
                    "hda-gfx", 
                    Buffer (0x02)
                    {
                         0x01, 0xFF                                       // ..
                    }, 

                    "@0,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }, 

                    "@1,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }, 

                    "@2,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }, 

                    "@3,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }, 

                    "@4,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }, 

                    "@5,connector-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x08, 0x00, 0x00                           // ....
                    }
                })
            }
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
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
                    "hda-gfx", 
                    Buffer (0x02)
                    {
                         0x01, 0xFF                                       // ..
                    }
                })
            }
        }
    }

    Scope (_SB.PCI0.HDEF)
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
                "layout-id", 
                Buffer (0x04)
                {
                     0x03, 0x00, 0x00, 0x00                           // ....
                }
            })
        }
    }

    Scope (_SB.PCI0.SATA)
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
                "pci8086,8c83"
            })
        }

        Device (PRT4)
        {
            Name (_ADR, 0x0004FFFF)  // _ADR: Address
        }

        Device (PRT5)
        {
            Name (_ADR, 0x0005FFFF)  // _ADR: Address
        }

        Scope (NVM0)
        {
            Name (_STA, Zero)  // _STA: Status
        }
    }

    Scope (_SB.PCI0.SAT1)
    {
        Name (_STA, Zero)  // _STA: Status
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
                "pci8086,8c44"
            })
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

        Device (EC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_STA, One)  // _STA: Status
        }

        Scope (LDR2)
        {
            Name (_STA, Zero)  // _STA: Status
        }

        Scope (LDRC)
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

    Scope (_SB.PCI0.SBUS)
    {
        Device (BUS0)
        {
            Name (_CID, "smbus")  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Device (DVL0)
            {
                Name (_ADR, 0x57)  // _ADR: Address
                Name (_CID, "diagsvault")  // _CID: Compatible ID
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
                        0x57
                    })
                }
            }
        }
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

    Scope (_SB.PCI0.IGPU)
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
            \_SB.PCI0.XHC.XSEL ()
        }

        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }
}

