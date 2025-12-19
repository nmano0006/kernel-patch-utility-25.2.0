# Kernel Patch Utility 25.2.0

## Quick Start

1. **Copy to desktop:**
```bash
cp kernel-patch-utility-25.2.0.sh ~/Desktop/
chmod +x ~/Desktop/kernel-patch-utility-25.2.0.sh
cd ~/Desktop
./kernel-patch-utility-25.2.0.sh
```
## categories/
├── core_support/                        # Group 1: Core Support (Patches 1-10)
│   ├── 📄 01_cpu_id.patch               # Patch 1: Raptor Lake CPU ID
│   ├── 📄 02_xcpm_bootstrap.patch       # Patch 2: XCPM Bootstrap
│   ├── 📄 03_core_msrs.patch            # Patch 3: Core MSRs
│   ├── 📄 04_package_msrs.patch         # Patch 4: Package MSRs
│   ├── 📄 05_smt_msrs.patch             # Patch 5: SMT MSRs
│   ├── 📄 06_core_count_64.patch        # Patch 6: Core Count 64
│   ├── 📄 07_cpu_topology.patch         # Patch 7: CPU Topology
│   ├── 📄 08_xcpm_extras1.patch         # Patch 8: XCPM Extra 1
│   ├── 📄 09_xcpm_extras2.patch         # Patch 9: XCPM Extra 2
│   └── 📄 10_flex_ratio.patch           # Patch 10: Flex Ratio
├── cpu_recognition/                     # Group 2: Recognition (Patches 11-20)
│   ├── 📄 11_core_count_24.patch        # Patch 11: Core Count 24
│   ├── 📄 12_cpu_ratio.patch            # Patch 12: CPU Ratio
│   ├── 📄 13_power_bypass.patch         # Patch 13: Power Bypass
│   ├── 📄 14_power_limit.patch          # Patch 14: Power Limit
│   ├── 📄 15_core_scope.patch           # Patch 15: Core Scope
│   ├── 📄 16_pkg_scope.patch            # Patch 16: Package Scope
│   ├── 📄 17_smt_scope.patch            # Patch 17: SMT Scope
│   ├── 📄 18_bootstrap_force.patch      # Patch 18: Bootstrap Force
│   ├── 📄 19_cpu_model.patch            # Patch 19: CPU Model
│   └── 📄 20_cpu_family.patch           # Patch 20: CPU Family
├── performance/                         # Group 3: Performance (Patches 21-30)
│   ├── 📄 21_cpu_model_alt.patch        # Patch 21: CPU Model Alt
│   ├── 📄 22_msr_power.patch            # Patch 22: MSR Power
│   ├── 📄 23_xcpm_bootstrap_33.patch    # Patch 23: XCPM +0x33
│   ├── 📄 24_raptor_stepping.patch      # Patch 24: Raptor Stepping
│   ├── 📄 25_hwp_msr.patch              # Patch 25: HWP MSR
│   ├── 📄 26_model_bypass.patch         # Patch 26: Model Bypass
│   ├── 📄 27_core_count_32.patch        # Patch 27: Core Count 32
│   ├── 📄 28_performance_unlock.patch   # Patch 28: Performance Unlock
│   ├── 📄 29_cpu_ratio_unlock.patch     # Patch 29: CPU Ratio Unlock
│   └── 📄 30_cpu_ratio_limit.patch      # Patch 30: CPU Ratio Limit
├── core_management/                     # Group 4: Core Management (Patches 31-40)
│   ├── 📄 31_max_turbo_58.patch         # Patch 31: Max Turbo 5.8GHz
│   ├── 📄 32_perf_states.patch          # Patch 32: Perf States
│   ├── 📄 33_all_perf_states.patch      # Patch 33: All Perf States
│   ├── 📄 34_core_count_fix.patch       # Patch 34: Core Count Fix
│   ├── 📄 35_cores_per_package.patch    # Patch 35: Cores per Package
│   ├── 📄 36_logical_per_package.patch  # Patch 36: Logical per Package
│   ├── 📄 37_physical_cores.patch       # Patch 37: Physical Cores
│   ├── 📄 38_logical_core_count.patch   # Patch 38: Logical Core Count
│   ├── 📄 39_logical_per_package_24.patch # Patch 39: Logical 128-24
│   └── 📄 40_applertc_z790.patch        # Patch 40: AppleRTC Z790
├── register_fixes/                      # Group 5: Register Fixes (Patches 41-50)
│   ├── 📄 41_panic_handler.patch        # Patch 41: Panic Handler
│   ├── 📄 42_mov_eax.patch              # Patch 42: MOV EAX 8->24
│   ├── 📄 43_mov_ecx.patch              # Patch 43: MOV ECX 8->24
│   ├── 📄 44_mov_edx.patch              # Patch 44: MOV EDX 8->24
│   ├── 📄 45_mov_ebx.patch              # Patch 45: MOV EBX 8->24
│   ├── 📄 46_mov_esi.patch              # Patch 46: MOV ESI 8->24
│   ├── 📄 47_mov_edi.patch              # Patch 47: MOV EDI 8->24
│   ├── 📄 48_disable_msr_1fc.patch      # Patch 48: Disable MSR 0x1FC
│   ├── 📄 49_8core_check.patch          # Patch 49: 8-core Check
│   └── 📄 50_16core_check.patch         # Patch 50: 16-core Check
└── extended_support/                    # Group 6: Extended Support (Patches 51-65)
    ├── 📄 51_core_16_to_64.patch        # Patch 51: Core 16->64
    ├── 📄 52_core_24_to_64.patch        # Patch 52: Core 24->64
    ├── 📄 53_core_32_to_64.patch        # Patch 53: Core 32->64
    ├── 📄 54_universal_cpuid.patch      # Patch 54: Universal CPUID
    ├── 📄 55_14th_gen_cpuid.patch       # Patch 55: 14th Gen CPUID
    ├── 📄 56_core_8_to_16.patch         # Patch 56: Core 8->16 (i5/i7)
    ├── 📄 57_core_8_to_24.patch         # Patch 57: Core 8->24 (i9)
    ├── 📄 58_core_8_to_32.patch         # Patch 58: Core 8->32 (Xeon)
    ├── 📄 59_topology_8p8e.patch        # Patch 59: Topology 8P+8E
    ├── 📄 60_topology_6p8e.patch        # Patch 60: Topology 6P+8E
    ├── 📄 61_power_65w.patch            # Patch 61: Power 65W
    ├── 📄 62_power_125w.patch           # Patch 62: Power 125W
    ├── 📄 63_power_35w.patch            # Patch 63: Power 35W
    ├── 📄 64_universal_bootstrap.patch  # Patch 64: Universal Bootstrap
    └── 📄 65_universal_smt.patch        # Patch 65: Universal SMT
## Compatibility
- macOS Kernel: 25.0.0 to 25.99.99
- Primary CPU: Intel Core i9-13900K (Raptor Lake) and this script support all system.
- Also supports: All 13th Gen Raptor Lake CPUs
- Compatible with: 12th Gen Alder Lake, 14th Gen Raptor Lake Refresh, and others test first.

## 💝 Support Development

Help maintain and improve Kernel Patch Utility. Your support enables regular updates, bug fixes, and compatibility testing.

[![Donate with PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/donate/?business=H3PV9HX92AVMJ&no_recurring=0&item_name=Support+Kernel+Patch+Utility+development.+Donations+fund+testing+devices+%26+server+costs+for+this+open-source+tool.%0A&currency_code=CAD)

*Supports one-time or monthly donations in CAD*
    

