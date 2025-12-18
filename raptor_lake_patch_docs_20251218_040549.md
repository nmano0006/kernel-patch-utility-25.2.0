# Raptor Lake Kernel Patch Documentation
**Author:** N.Mano  \n**Kernel Version:** 25.2.0  \n**Total Patches:** 65
**Primary Target:** Intel Core i9-13900K (Raptor Lake)

## Overview
This document contains 65 kernel patches specifically optimized for Intel 13th Gen Raptor Lake CPUs, with primary focus on i9-13900K.

## Patch Groups

### Group 1: Core Raptor Lake Support (Patches 1-10)
Essential patches for Raptor Lake CPU recognition and basic functionality.

1. **[1] i9-13900K Raptor Lake Support - Alder Lake to Raptor Lake - Patched by N.Mano**
2. **[2] AppleXcpmCfgLock - XCPM Bootstrap Force Success - Patched by N.Mano**
3. **[3] AppleXcpmExtraMsrs - Core scope (76 cores) - Patched by N.Mano**
4. **[4] AppleXcpmExtraMsrs - Package scope - Patched by N.Mano**
5. **[5] AppleXcpmExtraMsrs - SMT scope - Patched by N.Mano**
6. **[6] AppleCpuPmCfgLock - Core count 8 to 64 - Patched by N.Mano**
7. **[7] Fix CPU topology for i9-13900K (c1e108 to c1e118) - Patched by N.Mano**
8. **[8] AppleXcpmExtraMsrs patch 1 - Patched by N.Mano**
9. **[9] AppleXcpmExtraMsrs patch 2 - Patched by N.Mano**
10. **[10] Disable Flex Ratio MSR 0x194 bit 4 - Patched by N.Mano**

### Group 2: CPU Recognition & Topology (Patches 11-20)
Patches for correct CPU model detection and core topology.

### Group 3: Performance Unlocks (Patches 21-30)
Performance enhancements and turbo boost optimizations.

### Group 4: Core Count & Power Management (Patches 31-40)
Fixes for core count detection and power management.

### Group 5: Register & MSR Fixes (Patches 41-50)
Low-level register and MSR modifications.

### Group 6: Universal & Extended Support (Patches 51-65)
Extended support for other CPU models and universal fixes.

## Usage Instructions
1. Enable all 65 patches for i9-13900K
2. For other Raptor Lake CPUs: Enable all patches
3. For Alder Lake: Test compatibility first
4. Always test on USB installer before production

## Compatibility
- macOS Kernel: 25.0.0 to 25.99.99
- Primary CPU: Intel Core i9-13900K (Raptor Lake)
- Also supports: All 13th Gen Raptor Lake CPUs
- Compatible with: 12th Gen Alder Lake, 14th Gen Raptor Lake Refresh

## Critical Patches for i9-13900K
1. Patch 1: Raptor Lake CPU ID
2. Patch 7: CPU topology fix
3. Patch 12: CPU Ratio Extension
4. Patch 13: Power Limit Bypass
5. Patch 31: Max Turbo 5.8GHz fix

