#!/bin/bash

echo ""
echo "=========================================="
echo "   RAPTOR LAKE KERNEL PATCH UTILITIES (65 PATCHES)"
echo "   CONFIGURED FOR KERNEL 25.2.0"
echo "   SPECIFIC FOR i9-13900K / RAPTOR LAKE"
echo "   Author: N.Mano"
echo "=========================================="
echo ""

# Get your exact kernel version
CURRENT_KERNEL=$(uname -r)
echo "Author: N.Mano"
echo "Your system: macOS $(sw_vers -productVersion) with Kernel $CURRENT_KERNEL"
echo "All patches configured for Kernel 25.2.0 compatibility"
echo "Specific support for: 13th Gen Raptor Lake (i9-13900K)"
echo ""

# Store all patch data in arrays
declare -a PATCH_COMMENTS
declare -a PATCH_FIND_DATA
declare -a PATCH_REPLACE_DATA
declare -a PATCH_ARCH
declare -a PATCH_BASE
declare -a PATCH_COUNT
declare -a PATCH_IDENTIFIER
declare -a PATCH_MAX_KERNEL
declare -a PATCH_MIN_KERNEL

# Initialize all 65 patches for KERNEL 25.2.0 from your XML
# All patches by N.Mano
# MinKernel set to 25.0.0, MaxKernel to 25.99.99

# Patch 1 - i9-13900K Raptor Lake Support - Alder Lake to Raptor Lake
PATCH_COMMENTS[0]="[1] i9-13900K Raptor Lake Support - Alder Lake to Raptor Lake - Patched by N.Mano"
PATCH_FIND_DATA[0]="oAYJ"
PATCH_REPLACE_DATA[0]="cQYL"
PATCH_ARCH[0]="Any"
PATCH_BASE[0]=""
PATCH_COUNT[0]="0"
PATCH_IDENTIFIER[0]="kernel"
PATCH_MAX_KERNEL[0]="25.99.99"
PATCH_MIN_KERNEL[0]="25.0.0"

# Patch 2 - AppleXcpmCfgLock - XCPM Bootstrap Force Success
PATCH_COMMENTS[1]="[2] AppleXcpmCfgLock - XCPM Bootstrap Force Success - Patched by N.Mano"
PATCH_FIND_DATA[1]="SIsdKECrAA=="
PATCH_REPLACE_DATA[1]="SDHbkJCQkA=="
PATCH_ARCH[1]="x86_64"
PATCH_BASE[1]="_xcpm_bootstrap"
PATCH_COUNT[1]="1"
PATCH_IDENTIFIER[1]="kernel"
PATCH_MAX_KERNEL[1]="25.99.99"
PATCH_MIN_KERNEL[1]="25.0.0"

# Patch 3 - AppleXcpmExtraMsrs - Core scope (76 cores)
PATCH_COMMENTS[2]="[3] AppleXcpmExtraMsrs - Core scope (76 cores) - Patched by N.Mano"
PATCH_FIND_DATA[2]="TAAAAAAAAAAAAAAADwQAAA=="
PATCH_REPLACE_DATA[2]="TAAAAAAAAAAAAAAATAAAAA=="
PATCH_ARCH[2]="x86_64"
PATCH_BASE[2]="_xcpm_core_scope_msrs"
PATCH_COUNT[2]="1"
PATCH_IDENTIFIER[2]="kernel"
PATCH_MAX_KERNEL[2]="25.99.99"
PATCH_MIN_KERNEL[2]="25.0.0"

# Patch 4 - AppleXcpmExtraMsrs - Package scope
PATCH_COMMENTS[3]="[4] AppleXcpmExtraMsrs - Package scope - Patched by N.Mano"
PATCH_FIND_DATA[3]="BAAAAAAAAAAEAAAAAAAAAA=="
PATCH_REPLACE_DATA[3]="BAAAAAAAAADccwYAAAAAAA=="
PATCH_ARCH[3]="x86_64"
PATCH_BASE[3]="_xcpm_pkg_scope_msrs"
PATCH_COUNT[3]="10"
PATCH_IDENTIFIER[3]="kernel"
PATCH_MAX_KERNEL[3]="25.99.99"
PATCH_MIN_KERNEL[3]="25.0.0"

# Patch 5 - AppleXcpmExtraMsrs - SMT scope
PATCH_COMMENTS[4]="[5] AppleXcpmExtraMsrs - SMT scope - Patched by N.Mano"
PATCH_FIND_DATA[4]="BAAAAAAAAAAAAAQAAAAAAA=="
PATCH_REPLACE_DATA[4]="BAAAAAAAAAAABAAAAAAAAA=="
PATCH_ARCH[4]="x86_64"
PATCH_BASE[4]="_xcpm_SMT_scope_msrs"
PATCH_COUNT[4]="1"
PATCH_IDENTIFIER[4]="kernel"
PATCH_MAX_KERNEL[4]="25.99.99"
PATCH_MIN_KERNEL[4]="25.0.0"

# Patch 6 - AppleCpuPmCfgLock - Core count 8 to 64
PATCH_COMMENTS[5]="[6] AppleCpuPmCfgLock - Core count 8 to 64 - Patched by N.Mano"
PATCH_FIND_DATA[5]="g/iA"
PATCH_REPLACE_DATA[5]="g/gA"
PATCH_ARCH[5]="x86_64"
PATCH_BASE[5]="_cpu_pm_core_count"
PATCH_COUNT[5]="1"
PATCH_IDENTIFIER[5]="kernel"
PATCH_MAX_KERNEL[5]="25.99.99"
PATCH_MIN_KERNEL[5]="25.0.0"

# Patch 7 - Fix CPU topology for i9-13900K (c1e108 to c1e118)
PATCH_COMMENTS[6]="[7] Fix CPU topology for i9-13900K (c1e108 to c1e118) - Patched by N.Mano"
PATCH_FIND_DATA[6]="weEI"
PATCH_REPLACE_DATA[6]="weEY"
PATCH_ARCH[6]="Any"
PATCH_BASE[6]=""
PATCH_COUNT[6]="1"
PATCH_IDENTIFIER[6]="kernel"
PATCH_MAX_KERNEL[6]="25.99.99"
PATCH_MIN_KERNEL[6]="25.0.0"

# Patch 8 - AppleXcpmExtraMsrs patch 1
PATCH_COMMENTS[7]="[8] AppleXcpmExtraMsrs patch 1 - Patched by N.Mano"
PATCH_FIND_DATA[7]="Bg8QQboAAAAA"
PATCH_REPLACE_DATA[7]="Bg8QQboAEAAA"
PATCH_ARCH[7]="Any"
PATCH_BASE[7]=""
PATCH_COUNT[7]="1"
PATCH_IDENTIFIER[7]="com.apple.driver.AppleIntelCPUPowerManagement"
PATCH_MAX_KERNEL[7]="25.99.99"
PATCH_MIN_KERNEL[7]="25.0.0"

# Patch 9 - AppleXcpmExtraMsrs patch 2
PATCH_COMMENTS[8]="[9] AppleXcpmExtraMsrs patch 2 - Patched by N.Mano"
PATCH_FIND_DATA[8]="Bg8QSAcAAQ=="
PATCH_REPLACE_DATA[8]="Bg8QSAcABw=="
PATCH_ARCH[8]="Any"
PATCH_BASE[8]=""
PATCH_COUNT[8]="1"
PATCH_IDENTIFIER[8]="com.apple.driver.AppleIntelCPUPowerManagement"
PATCH_MAX_KERNEL[8]="25.99.99"
PATCH_MIN_KERNEL[8]="22.0.0"

# Patch 10 - Disable Flex Ratio MSR 0x194 bit 4
PATCH_COMMENTS[9]="[10] Disable Flex Ratio MSR 0x194 bit 4 - Patched by N.Mano"
PATCH_FIND_DATA[9]="Bg8QSA=="
PATCH_REPLACE_DATA[9]="Bg8QSA=="
PATCH_ARCH[9]="x86_64"
PATCH_BASE[9]=""
PATCH_COUNT[9]="1"
PATCH_IDENTIFIER[9]="com.apple.driver.AppleIntelCPUPowerManagement"
PATCH_MAX_KERNEL[9]="25.99.99"
PATCH_MIN_KERNEL[9]="22.0.0"

# Patch 11 - Fix CPU Core Count 128-24
PATCH_COMMENTS[10]="[11] Fix CPU Core Count 128-24 - Patched by N.Mano"
PATCH_FIND_DATA[10]="gAAAAA=="
PATCH_REPLACE_DATA[10]="GAAAAA=="
PATCH_ARCH[10]="Any"
PATCH_BASE[10]=""
PATCH_COUNT[10]="1"
PATCH_IDENTIFIER[10]="com.apple.driver.AppleACPIPlatform"
PATCH_MAX_KERNEL[10]=""
PATCH_MIN_KERNEL[10]="25.00.00"

# Patch 12 - CPU Ratio Extension - i9-13900K
PATCH_COMMENTS[11]="[12] CPU Ratio Extension - i9-13900K - Patched by N.Mano"
PATCH_FIND_DATA[11]="g/8P"
PATCH_REPLACE_DATA[11]="g/88"
PATCH_ARCH[11]="Any"
PATCH_BASE[11]=""
PATCH_COUNT[11]="1"
PATCH_IDENTIFIER[11]="kernel"
PATCH_MAX_KERNEL[11]="25.99.99"
PATCH_MIN_KERNEL[11]="25.2.0"

# Patch 13 - Power Limit Bypass - i9-13900K
PATCH_COMMENTS[12]="[13] Power Limit Bypass - i9-13900K - Patched by N.Mano"
PATCH_FIND_DATA[12]="dBA="
PATCH_REPLACE_DATA[12]="6xA="
PATCH_ARCH[12]="Any"
PATCH_BASE[12]=""
PATCH_COUNT[12]="1"
PATCH_IDENTIFIER[12]="kernel"
PATCH_MAX_KERNEL[12]="25.99.99"
PATCH_MIN_KERNEL[12]="25.2.0"

# Patch 14 - macOS 25.2.0 Power Limit
PATCH_COMMENTS[13]="[14] macOS 25.2.0 Power Limit - By N.Mano"
PATCH_FIND_DATA[13]="uAEAAACQwegQAQAA"
PATCH_REPLACE_DATA[13]="uAEAAACQwegQAgAA"
PATCH_ARCH[13]="x86_64"
PATCH_BASE[13]=""
PATCH_COUNT[13]="1"
PATCH_IDENTIFIER[13]="kernel"
PATCH_MAX_KERNEL[13]="25.99.99"
PATCH_MIN_KERNEL[13]="25.0.0"

# Patch 15 - xcpm_core_scope_msrs - Enable all 76 cores
PATCH_COMMENTS[14]="[15] xcpm_core_scope_msrs - Enable all 76 cores - Patched N.Mano"
PATCH_FIND_DATA[14]="TAAAAAAAAAAAAAAADwQAAA=="
PATCH_REPLACE_DATA[14]="TAAAAAAAAAAAAAAATAAAAA=="
PATCH_ARCH[14]="x86_64"
PATCH_BASE[14]=""
PATCH_COUNT[14]="1"
PATCH_IDENTIFIER[14]="kernel"
PATCH_MAX_KERNEL[14]="25.99.99"
PATCH_MIN_KERNEL[14]="25.0.0"

# Patch 16 - xcpm_pkg_scope_msrs - Package power management
PATCH_COMMENTS[15]="[16] xcpm_pkg_scope_msrs - Package power management - Patched N.Mano"
PATCH_FIND_DATA[15]="BAAAAAAAAAAAAEAAAAAA"
PATCH_REPLACE_DATA[15]="BAAAAAAAAADccwYAAAAA"
PATCH_ARCH[15]="x86_64"
PATCH_BASE[15]=""
PATCH_COUNT[15]="1"
PATCH_IDENTIFIER[15]="kernel"
PATCH_MAX_KERNEL[15]="25.99.99"
PATCH_MIN_KERNEL[15]="25.0.0"

# Patch 17 - xcpm_SMT_scope_msrs - SMT power management
PATCH_COMMENTS[16]="[17] xcpm_SMT_scope_msrs - SMT power management - Patched N.Mano"
PATCH_FIND_DATA[16]="BAAAAAAAAAAAAAQAAAAAAA=="
PATCH_REPLACE_DATA[16]="BAAAAAAAAAAABAAAAAAAAA=="
PATCH_ARCH[16]="x86_64"
PATCH_BASE[16]=""
PATCH_COUNT[16]="1"
PATCH_IDENTIFIER[16]="kernel"
PATCH_MAX_KERNEL[16]="25.99.99"
PATCH_MIN_KERNEL[16]="25.0.0"

# Patch 18 - _xcpm_bootstrap - Force success
PATCH_COMMENTS[17]="[18] _xcpm_bootstrap - Force success - Patched N.Mano"
PATCH_FIND_DATA[17]="SIXbdTk="
PATCH_REPLACE_DATA[17]="SDHAw5A="
PATCH_ARCH[17]="x86_64"
PATCH_BASE[17]=""
PATCH_COUNT[17]="1"
PATCH_IDENTIFIER[17]="kernel"
PATCH_MAX_KERNEL[17]="25.99.99"
PATCH_MIN_KERNEL[17]="25.0.0"

# Patch 19 - CPU Model Recognition
PATCH_COMMENTS[18]="[19] Patch 1: CPU Model Recognition - Patched by N.Mano"
PATCH_FIND_DATA[18]="vwYAAAA="
PATCH_REPLACE_DATA[18]="vwcAAAA="
PATCH_ARCH[18]="x86_64"
PATCH_BASE[18]=""
PATCH_COUNT[18]="1"
PATCH_IDENTIFIER[18]="kernel"
PATCH_MAX_KERNEL[18]="25.99.99"
PATCH_MIN_KERNEL[18]="22.0.0"

# Patch 20 - CPU Family Fix
PATCH_COMMENTS[19]="[20] Patch 2: CPU Family Fix - Patched by N.Mano"
PATCH_FIND_DATA[19]="g/gG"
PATCH_REPLACE_DATA[19]="g/gH"
PATCH_ARCH[19]="Any"
PATCH_BASE[19]=""
PATCH_COUNT[19]="1"
PATCH_IDENTIFIER[19]="kernel"
PATCH_MAX_KERNEL[19]="25.99.99"
PATCH_MIN_KERNEL[19]="25.2.0"

# Patch 21 - CPU Model Fix (Alternative)
PATCH_COMMENTS[20]="[21] Patch 3: CPU Model Fix (Alternative) - Patched by N.Mano"
PATCH_FIND_DATA[20]="uAYAAAA="
PATCH_REPLACE_DATA[20]="uAcAAAA="
PATCH_ARCH[20]="Any"
PATCH_BASE[20]=""
PATCH_COUNT[20]="1"
PATCH_IDENTIFIER[20]="kernel"
PATCH_MAX_KERNEL[20]="25.99.99"
PATCH_MIN_KERNEL[20]="25.2.0"

# Patch 22 - MSR Power Control (CRITICAL)
PATCH_COMMENTS[21]="[22] Patch 4: MSR Power Control (CRITICAL) - Patched by N.Mano"
PATCH_FIND_DATA[21]="QbgBAAAA"
PATCH_REPLACE_DATA[21]="QbgAAAAA"
PATCH_ARCH[21]="Any"
PATCH_BASE[21]=""
PATCH_COUNT[21]="1"
PATCH_IDENTIFIER[21]="kernel"
PATCH_MAX_KERNEL[21]="25.99.99"
PATCH_MIN_KERNEL[21]="25.2.0"

# Patch 23 - XCPM Bootstrap +0x33
PATCH_COMMENTS[22]="[23] Patch 5: XCPM Bootstrap +0x33 - Patched by N.Mano"
PATCH_FIND_DATA[22]="xkMzAQ=="
PATCH_REPLACE_DATA[22]="xkMzAA=="
PATCH_ARCH[22]="Any"
PATCH_BASE[22]=""
PATCH_COUNT[22]="1"
PATCH_IDENTIFIER[22]="kernel"
PATCH_MAX_KERNEL[22]="25.99.99"
PATCH_MIN_KERNEL[22]="25.2.0"

# Patch 24 - XCPM Raptor Lake Stepping Check
PATCH_COMMENTS[23]="[24] Patch 7: XCPM Raptor Lake Stepping Check - Patched by N.Mano"
PATCH_FIND_DATA[23]="D4ILAQAA"
PATCH_REPLACE_DATA[23]="kJCQkJCQ"
PATCH_ARCH[23]="x86_64"
PATCH_BASE[23]=""
PATCH_COUNT[23]="1"
PATCH_IDENTIFIER[23]="kernel"
PATCH_MAX_KERNEL[23]="25.99.99"
PATCH_MIN_KERNEL[23]="25.0.0"

# Patch 25 - XCPM MSR 0x774 HWP
PATCH_COMMENTS[24]="[25] Patch 8: XCPM MSR 0x774 HWP - Patched by N.Mano"
PATCH_FIND_DATA[24]="uXQHAAAPMA=="
PATCH_REPLACE_DATA[24]="uXQHAACQkA=="
PATCH_ARCH[24]="x86_64"
PATCH_BASE[24]=""
PATCH_COUNT[24]="1"
PATCH_IDENTIFIER[24]="kernel"
PATCH_MAX_KERNEL[24]="25.99.99"
PATCH_MIN_KERNEL[24]="25.0.0"

# Patch 26 - CPU Model Check Bypass
PATCH_COMMENTS[25]="[26] Patch 9: CPU Model Check Bypass - Patched by N.Mano"
PATCH_FIND_DATA[25]="g/sGdQ=="
PATCH_REPLACE_DATA[25]="g/sGkA=="
PATCH_ARCH[25]="x86_64"
PATCH_BASE[25]=""
PATCH_COUNT[25]="1"
PATCH_IDENTIFIER[25]="kernel"
PATCH_MAX_KERNEL[25]="25.99.99"
PATCH_MIN_KERNEL[25]="25.0.0"

# Patch 27 - Fix Core Count 32-24
PATCH_COMMENTS[26]="[27] Fix Core Count 32-24 - Patched by N.Mano"
PATCH_FIND_DATA[26]="IAAAAA=="
PATCH_REPLACE_DATA[26]="GAAAAA=="
PATCH_ARCH[26]="Any"
PATCH_BASE[26]=""
PATCH_COUNT[26]="1"
PATCH_IDENTIFIER[26]="kernel"
PATCH_MAX_KERNEL[26]="25.99.99"
PATCH_MIN_KERNEL[26]="25.0.0"

# Patch 28 - Raptor Lake Performance unlock
PATCH_COMMENTS[27]="[28] Raptor Lake Performance unlock - Patched by N.Mano"
PATCH_FIND_DATA[27]="g/gPDw=="
PATCH_REPLACE_DATA[27]="g/g8Dw=="
PATCH_ARCH[27]="Any"
PATCH_BASE[27]=""
PATCH_COUNT[27]="1"
PATCH_IDENTIFIER[27]="kernel"
PATCH_MAX_KERNEL[27]="25.99.99"
PATCH_MIN_KERNEL[27]="25.0.0"

# Patch 29 - CPU Ratio Unlock
PATCH_COMMENTS[28]="[29] CPU Ratio Unlock - Patched by N.Mano"
PATCH_FIND_DATA[28]="g/gP"
PATCH_REPLACE_DATA[28]="g/g8"
PATCH_ARCH[28]="Any"
PATCH_BASE[28]=""
PATCH_COUNT[28]="1"
PATCH_IDENTIFIER[28]="kernel"
PATCH_MAX_KERNEL[28]="25.99.99"
PATCH_MIN_KERNEL[28]="25.0.0"

# Patch 30 - Changes CPU ratio limit from 0x0F to 0x5A
PATCH_COMMENTS[29]="[30] Changes CPU ratio limit from 0x0F to 0x5A - Patched by N.Mano"
PATCH_FIND_DATA[29]="g/gP"
PATCH_REPLACE_DATA[29]="g/ha"
PATCH_ARCH[29]="Any"
PATCH_BASE[29]=""
PATCH_COUNT[29]="1"
PATCH_IDENTIFIER[29]="kernel"
PATCH_MAX_KERNEL[29]="25.99.99"
PATCH_MIN_KERNEL[29]="25.0.0"

# Patch 31 - i9-13900K Max Turbo 5.8GHz CPU ID Fix
PATCH_COMMENTS[30]="[31] i9-13900K Max Turbo 5.8GHz CPU ID Fix - Patched by N.Mano"
PATCH_FIND_DATA[30]="g/gP"
PATCH_REPLACE_DATA[30]="g/g6"
PATCH_ARCH[30]="Any"
PATCH_BASE[30]=""
PATCH_COUNT[30]="1"
PATCH_IDENTIFIER[30]="kernel"
PATCH_MAX_KERNEL[30]="25.99.99"
PATCH_MIN_KERNEL[30]="25.0.0"

# Patch 32 - Enable Performance States
PATCH_COMMENTS[31]="[32] Enable Performance States - Patched by N.Mano"
PATCH_FIND_DATA[31]="g/gHdBA="
PATCH_REPLACE_DATA[31]="g/gHdRA="
PATCH_ARCH[31]="Any"
PATCH_BASE[31]=""
PATCH_COUNT[31]="1"
PATCH_IDENTIFIER[31]="kernel"
PATCH_MAX_KERNEL[31]="25.99.99"
PATCH_MIN_KERNEL[31]="25.0.0"

# Patch 33 - Enable All Performance States
PATCH_COMMENTS[32]="[33] Enable All Performance States - Patched by N.Mano"
PATCH_FIND_DATA[32]="D4Q="
PATCH_REPLACE_DATA[32]="kJA="
PATCH_ARCH[32]="Any"
PATCH_BASE[32]=""
PATCH_COUNT[32]="1"
PATCH_IDENTIFIER[32]="kernel"
PATCH_MAX_KERNEL[32]="25.99.99"
PATCH_MIN_KERNEL[32]="25.0.0"

# Patch 34 - CPU Core Count Fix
PATCH_COMMENTS[33]="[34] CPU Core Count Fix - Patched by N.Mano"
PATCH_FIND_DATA[33]="CgAAAA=="
PATCH_REPLACE_DATA[33]="GAAAAA=="
PATCH_ARCH[33]="Any"
PATCH_BASE[33]=""
PATCH_COUNT[33]="1"
PATCH_IDENTIFIER[33]="kernel"
PATCH_MAX_KERNEL[33]="25.99.99"
PATCH_MIN_KERNEL[33]="25.0.0"

# Patch 35 - Fix machdep.cpu.cores_per_package from 128 to 24
PATCH_COMMENTS[34]="[35] Fix machdep.cpu.cores_per_package from 128 to 24 - Patched by N.Mano"
PATCH_FIND_DATA[34]="gAAAAA=="
PATCH_REPLACE_DATA[34]="GAAAAA=="
PATCH_ARCH[34]="Any"
PATCH_BASE[34]=""
PATCH_COUNT[34]="1"
PATCH_IDENTIFIER[34]="kernel"
PATCH_MAX_KERNEL[34]="25.99.99"
PATCH_MIN_KERNEL[34]="25.0.0"

# Patch 36 - Fix machdep.cpu.logical_per_package from 128 to 24
PATCH_COMMENTS[35]="[36] Fix machdep.cpu.logical_per_package from 128 to 24 - Patched by N.Mano"
PATCH_FIND_DATA[35]="gAAAAA=="
PATCH_REPLACE_DATA[35]="GAAAAA=="
PATCH_ARCH[35]="Any"
PATCH_BASE[35]=""
PATCH_COUNT[35]="1"
PATCH_IDENTIFIER[35]="kernel"
PATCH_MAX_KERNEL[35]="25.99.99"
PATCH_MIN_KERNEL[35]="25.0.0"

# Patch 37 - Fix physical core count: 8 to 24 for i9-13900K
PATCH_COMMENTS[36]="[37] Fix physical core count: 8 to 24 for i9-13900K - Patched by N.Mano"
PATCH_FIND_DATA[36]="CAAAAA=="
PATCH_REPLACE_DATA[36]="GAAAAA=="
PATCH_ARCH[36]="Any"
PATCH_BASE[36]=""
PATCH_COUNT[36]="1"
PATCH_IDENTIFIER[36]="kernel"
PATCH_MAX_KERNEL[36]="25.99.99"
PATCH_MIN_KERNEL[36]="25.0.0"

# Patch 38 - Fix Logical core_count- Set 32 to 24
PATCH_COMMENTS[37]="[38] Fix Logical core_count- Set 32 to 24 - Patched by N.Mano"
PATCH_FIND_DATA[37]="IAAAAA=="
PATCH_REPLACE_DATA[37]="GAAAAA=="
PATCH_ARCH[37]="Any"
PATCH_BASE[37]=""
PATCH_COUNT[37]="1"
PATCH_IDENTIFIER[37]="kernel"
PATCH_MAX_KERNEL[37]="25.99.99"
PATCH_MIN_KERNEL[37]="25.0.0"

# Patch 39 - Fix logical_per_package 128-24 (i9-13900K)
PATCH_COMMENTS[38]="[39] Fix logical_per_package 128-24 (i9-13900K) - Patched by N.Mano"
PATCH_FIND_DATA[38]="gAAAAA=="
PATCH_REPLACE_DATA[38]="GAAAAA=="
PATCH_ARCH[38]="x86_64"
PATCH_BASE[38]=""
PATCH_COUNT[38]="1"
PATCH_IDENTIFIER[38]="kernel"
PATCH_MAX_KERNEL[38]="25.99.99"
PATCH_MIN_KERNEL[38]="25.0.0"

# Patch 40 - AppleRTC - Z790 BIOS reset fix
PATCH_COMMENTS[39]="[40] AppleRTC - Z790 BIOS reset fix - Patched by N.Mano"
PATCH_FIND_DATA[39]="hcB0GrgAAAAA"
PATCH_REPLACE_DATA[39]="hcDrGrgAAAAA"
PATCH_ARCH[39]="Any"
PATCH_BASE[39]=""
PATCH_COUNT[39]="1"
PATCH_IDENTIFIER[39]="com.apple.driver.AppleRTC"
PATCH_MAX_KERNEL[39]="25.99.99"
PATCH_MIN_KERNEL[39]="25.0.0"

# Patch 41 - Panic handling - Generic 750D-EB0D
PATCH_COMMENTS[40]="[41] Panic handling - Generic 750D-EB0D - Patched by N.Mano"
PATCH_FIND_DATA[40]="dQ0="
PATCH_REPLACE_DATA[40]="6w0="
PATCH_ARCH[40]="Any"
PATCH_BASE[40]=""
PATCH_COUNT[40]="1"
PATCH_IDENTIFIER[40]="kernel"
PATCH_MAX_KERNEL[40]="25.99.99"
PATCH_MIN_KERNEL[40]="25.0.0"

# Patch 42 - MOV EAX,8 to 24
PATCH_COMMENTS[41]="[42] 1. MOV EAX,8 - MOV EAX,8 -24 - Patched by N.Mano"
PATCH_FIND_DATA[41]="uAgAAAA="
PATCH_REPLACE_DATA[41]="uBgAAAA="
PATCH_ARCH[41]="Any"
PATCH_BASE[41]=""
PATCH_COUNT[41]="1"
PATCH_IDENTIFIER[41]="kernel"
PATCH_MAX_KERNEL[41]="25.99.99"
PATCH_MIN_KERNEL[41]="25.0.0"

# Patch 43 - MOV ECX,8 to 24
PATCH_COMMENTS[42]="[43] 2. MOV ECX,8 - MOV ECX,24 - Patched by N.Mano"
PATCH_FIND_DATA[42]="uQgAAAA="
PATCH_REPLACE_DATA[42]="uRgAAAA="
PATCH_ARCH[42]="Any"
PATCH_BASE[42]=""
PATCH_COUNT[42]="1"
PATCH_IDENTIFIER[42]="kernel"
PATCH_MAX_KERNEL[42]="25.99.99"
PATCH_MIN_KERNEL[42]="25.0.0"

# Patch 44 - MOV EDX,8 to 24
PATCH_COMMENTS[43]="[44] 3. MOV EDX,8 - MOV EDX,24 - Patched by N.Mano"
PATCH_FIND_DATA[43]="uggAAAA="
PATCH_REPLACE_DATA[43]="uhgAAAA="
PATCH_ARCH[43]="Any"
PATCH_BASE[43]=""
PATCH_COUNT[43]="1"
PATCH_IDENTIFIER[43]="kernel"
PATCH_MAX_KERNEL[43]="25.99.99"
PATCH_MIN_KERNEL[43]="25.0.0"

# Patch 45 - MOV EBX,8 to 24
PATCH_COMMENTS[44]="[45] 4. MOV EBX,8 - MOV EBX,24 - Patched by N.Mano"
PATCH_FIND_DATA[44]="uwgAAAA="
PATCH_REPLACE_DATA[44]="uxgAAAA="
PATCH_ARCH[44]="Any"
PATCH_BASE[44]=""
PATCH_COUNT[44]="1"
PATCH_IDENTIFIER[44]="kernel"
PATCH_MAX_KERNEL[44]="25.99.99"
PATCH_MIN_KERNEL[44]="25.0.0"

# Patch 46 - MOV ESI,8 to 24
PATCH_COMMENTS[45]="[46] 5. MOV ESI,8 - MOV ESI,24 - Patched by N.Mano"
PATCH_FIND_DATA[45]="vggAAAA="
PATCH_REPLACE_DATA[45]="vhgAAAA="
PATCH_ARCH[45]="Any"
PATCH_BASE[45]=""
PATCH_COUNT[45]="1"
PATCH_IDENTIFIER[45]="kernel"
PATCH_MAX_KERNEL[45]="25.99.99"
PATCH_MIN_KERNEL[45]="25.0.0"

# Patch 47 - MOV EDI,8 to 24
PATCH_COMMENTS[46]="[47] 6. MOV EDI,8 - MOV EDI,24 - Patched by N.Mano"
PATCH_FIND_DATA[46]="vwgAAAA="
PATCH_REPLACE_DATA[46]="vxgAAAA="
PATCH_ARCH[46]="Any"
PATCH_BASE[46]=""
PATCH_COUNT[46]="1"
PATCH_IDENTIFIER[46]="kernel"
PATCH_MAX_KERNEL[46]="25.99.99"
PATCH_MIN_KERNEL[46]="25.0.0"

# Patch 48 - Disable MSR 0x1FC read for Raptor Lake
PATCH_COMMENTS[47]="[48] Disable MSR 0x1FC read for Raptor Lake - Patched by N.Mano"
PATCH_FIND_DATA[47]="VUiJ5YM9tbCIAAB0ELn8AQAADzKJ0g0AABAADzBdw5BV"
PATCH_REPLACE_DATA[47]="VTHAw5CQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQ"
PATCH_ARCH[47]="Any"
PATCH_BASE[47]=""
PATCH_COUNT[47]="1"
PATCH_IDENTIFIER[47]="kernel"
PATCH_MAX_KERNEL[47]="25.99.99"
PATCH_MIN_KERNEL[47]="25.0.0"

# Patch 49 - Fix 8-core check for 13900K
PATCH_COMMENTS[48]="[49] Fix 8-core check for 13900K - Patched by N.Mano"
PATCH_FIND_DATA[48]="g8gI"
PATCH_REPLACE_DATA[48]="g8gY"
PATCH_ARCH[48]="Any"
PATCH_BASE[48]=""
PATCH_COUNT[48]="1"
PATCH_IDENTIFIER[48]="kernel"
PATCH_MAX_KERNEL[48]="25.99.99"
PATCH_MIN_KERNEL[48]="25.0.0"

# Patch 50 - Fix 16-core check for 13900K
PATCH_COMMENTS[49]="[50] Fix 16-core check for 13900K - Patched by N.Mano"
PATCH_FIND_DATA[49]="g8gQ"
PATCH_REPLACE_DATA[49]="g8gY"
PATCH_ARCH[49]="Any"
PATCH_BASE[49]=""
PATCH_COUNT[49]="1"
PATCH_IDENTIFIER[49]="kernel"
PATCH_MAX_KERNEL[49]="25.99.99"
PATCH_MIN_KERNEL[49]="25.0.0"

# Patch 51 - Core Count - 16 to 64 cores
PATCH_COMMENTS[50]="[51] Core Count - 16 to 64 cores - Patched by N.Mano"
PATCH_FIND_DATA[50]="g/gQ"
PATCH_REPLACE_DATA[50]="g/hA"
PATCH_ARCH[50]="Any"
PATCH_BASE[50]="_core_count_check_16"
PATCH_COUNT[50]="1"
PATCH_IDENTIFIER[50]="kernel"
PATCH_MAX_KERNEL[50]="25.99.99"
PATCH_MIN_KERNEL[50]="25.0.0"

# Patch 52 - Core Count - 24 to 64 cores
PATCH_COMMENTS[51]="[52] Core Count - 24 to 64 cores - Patched by N.Mano"
PATCH_FIND_DATA[51]="g/gY"
PATCH_REPLACE_DATA[51]="g/hA"
PATCH_ARCH[51]="Any"
PATCH_BASE[51]="_core_count_check_24"
PATCH_COUNT[51]="1"
PATCH_IDENTIFIER[51]="kernel"
PATCH_MAX_KERNEL[51]="25.99.99"
PATCH_MIN_KERNEL[51]="25.0.0"

# Patch 53 - Core Count - 32 to 64 cores
PATCH_COMMENTS[52]="[53] Core Count - 32 to 64 cores - Patched by N.Mano"
PATCH_FIND_DATA[52]="g/kg"
PATCH_REPLACE_DATA[52]="g/hA"
PATCH_ARCH[52]="Any"
PATCH_BASE[52]="_core_count_check_32"
PATCH_COUNT[52]="1"
PATCH_IDENTIFIER[52]="kernel"
PATCH_MAX_KERNEL[52]="25.99.99"
PATCH_MIN_KERNEL[52]="25.0.0"

# Patch 54 - Universal CPU ID Support - Alder/Raptor/Raptor Refresh
PATCH_COMMENTS[53]="[54] Universal CPU ID Support - Alder/Raptor/Raptor Refresh - By N.Mano"
PATCH_FIND_DATA[53]="oAYJ"
PATCH_REPLACE_DATA[53]="cQYL"
PATCH_ARCH[53]="Any"
PATCH_BASE[53]=""
PATCH_COUNT[53]="0"
PATCH_IDENTIFIER[53]="kernel"
PATCH_MAX_KERNEL[53]="25.99.99"
PATCH_MIN_KERNEL[53]="25.0.0"

# Patch 55 - CPU ID for 14th Gen Raptor Lake Refresh
PATCH_COMMENTS[54]="[55] CPU ID for 14th Gen Raptor Lake Refresh - By N.Mano"
PATCH_FIND_DATA[54]="oAYJ"
PATCH_REPLACE_DATA[54]="cgYM"
PATCH_ARCH[54]="Any"
PATCH_BASE[54]=""
PATCH_COUNT[54]="0"
PATCH_IDENTIFIER[54]="kernel"
PATCH_MAX_KERNEL[54]="25.99.99"
PATCH_MIN_KERNEL[54]="25.0.0"

# Patch 56 - Core Count 8 to 16 (i5/i7 Alder/Raptor Lake)
PATCH_COMMENTS[55]="[56] Core Count 8 to 16 (i5/i7 Alder/Raptor Lake) - By N.Mano"
PATCH_FIND_DATA[55]="g/iA"
PATCH_REPLACE_DATA[55]="g/oA"
PATCH_ARCH[55]="x86_64"
PATCH_BASE[55]="_cpu_pm_core_count"
PATCH_COUNT[55]="1"
PATCH_IDENTIFIER[55]="kernel"
PATCH_MAX_KERNEL[55]="25.99.99"
PATCH_MIN_KERNEL[55]="25.0.0"

# Patch 57 - Core Count 8 to 24 (i9-13900K/14900K)
PATCH_COMMENTS[56]="[57] Core Count 8 to 24 (i9-13900K/14900K) - By N.Mano"
PATCH_FIND_DATA[56]="g/iA"
PATCH_REPLACE_DATA[56]="g/gA"
PATCH_ARCH[56]="x86_64"
PATCH_BASE[56]="_cpu_pm_core_count"
PATCH_COUNT[56]="1"
PATCH_IDENTIFIER[56]="kernel"
PATCH_MAX_KERNEL[56]="25.99.99"
PATCH_MIN_KERNEL[56]="25.0.0"

# Patch 58 - Core Count 8 to 32 (Xeon/i9 Extreme)
PATCH_COMMENTS[57]="[58] Core Count 8 to 32 (Xeon/i9 Extreme) - By N.Mano"
PATCH_FIND_DATA[57]="g/iA"
PATCH_REPLACE_DATA[57]="g/gQ"
PATCH_ARCH[57]="x86_64"
PATCH_BASE[57]="_cpu_pm_core_count"
PATCH_COUNT[57]="1"
PATCH_IDENTIFIER[57]="kernel"
PATCH_MAX_KERNEL[57]="25.99.99"
PATCH_MIN_KERNEL[57]="25.0.0"

# Patch 59 - CPU Topology for 8P+8E (i7-13700K)
PATCH_COMMENTS[58]="[59] CPU Topology for 8P+8E (i7-13700K) - By N.Mano"
PATCH_FIND_DATA[58]="weEI"
PATCH_REPLACE_DATA[58]="weEc"
PATCH_ARCH[58]="Any"
PATCH_BASE[58]=""
PATCH_COUNT[58]="1"
PATCH_IDENTIFIER[58]="kernel"
PATCH_MAX_KERNEL[58]="25.99.99"
PATCH_MIN_KERNEL[58]="25.0.0"

# Patch 60 - CPU Topology for 6P+8E (i5-13600K)
PATCH_COMMENTS[59]="[60] CPU Topology for 6P+8E (i5-13600K) - By N.Mano"
PATCH_FIND_DATA[59]="weEI"
PATCH_REPLACE_DATA[59]="weEY"
PATCH_ARCH[59]="Any"
PATCH_BASE[59]=""
PATCH_COUNT[59]="1"
PATCH_IDENTIFIER[59]="kernel"
PATCH_MAX_KERNEL[59]="25.99.99"
PATCH_MIN_KERNEL[59]="25.0.0"

# Patch 61 - Power Limits 65W TDP (Non-K CPUs)
PATCH_COMMENTS[60]="[61] Power Limits 65W TDP (Non-K CPUs) - By N.Mano"
PATCH_FIND_DATA[60]="BAAAAAAAAAAEAAAAAAAAAA=="
PATCH_REPLACE_DATA[60]="BAAAAAAAAGvY9wAAAAAA"
PATCH_ARCH[60]="x86_64"
PATCH_BASE[60]="_xcpm_pkg_scope_msrs"
PATCH_COUNT[60]="1"
PATCH_IDENTIFIER[60]="kernel"
PATCH_MAX_KERNEL[60]="25.99.99"
PATCH_MIN_KERNEL[60]="25.0.0"

# Patch 62 - Power Limits 125W TDP (K-series CPUs)
PATCH_COMMENTS[61]="[62] Power Limits 125W TDP (K-series CPUs) - By N.Mano"
PATCH_FIND_DATA[61]="BAAAAAAAAAAEAAAAAAAAAA=="
PATCH_REPLACE_DATA[61]="BAAAAAAAAADccwYAAAAAAA=="
PATCH_ARCH[61]="x86_64"
PATCH_BASE[61]="_xcpm_pkg_scope_msrs"
PATCH_COUNT[61]="1"
PATCH_IDENTIFIER[61]="kernel"
PATCH_MAX_KERNEL[61]="25.99.99"
PATCH_MIN_KERNEL[61]="25.0.0"

# Patch 63 - Power Limits 35W TDP (Mobile CPUs)
PATCH_COMMENTS[62]="[63] Power Limits 35W TDP (Mobile CPUs) - By N.Mano"
PATCH_FIND_DATA[62]="BAAAAAAAAAAEAAAAAAAAAA=="
PATCH_REPLACE_DATA[62]="BAAAAAAAABzZ4QAAAAAA"
PATCH_ARCH[62]="x86_64"
PATCH_BASE[62]="_xcpm_pkg_scope_msrs"
PATCH_COUNT[62]="1"
PATCH_IDENTIFIER[62]="kernel"
PATCH_MAX_KERNEL[62]="25.99.99"
PATCH_MIN_KERNEL[62]="25.0.0"

# Patch 64 - Universal XCPM Bootstrap Force Success
PATCH_COMMENTS[63]="[64] Universal XCPM Bootstrap Force Success - By N.Mano"
PATCH_FIND_DATA[63]="SIsdKECrAA=="
PATCH_REPLACE_DATA[63]="SDHbkJCQkA=="
PATCH_ARCH[63]="x86_64"
PATCH_BASE[63]="_xcpm_bootstrap"
PATCH_COUNT[63]="1"
PATCH_IDENTIFIER[63]="kernel"
PATCH_MAX_KERNEL[63]="25.99.99"
PATCH_MIN_KERNEL[63]="25.0.0"

# Patch 65 - Universal SMT Scope MSR
PATCH_COMMENTS[64]="[65] Universal SMT Scope MSR - By N.Mano"
PATCH_FIND_DATA[64]="BAAAAAAAAAAAAAQAAAAAAA=="
PATCH_REPLACE_DATA[64]="BAAAAAAAAAAABAAAAAAAAA=="
PATCH_ARCH[64]="x86_64"
PATCH_BASE[64]="_xcpm_SMT_scope_msrs"
PATCH_COUNT[64]="1"
PATCH_IDENTIFIER[64]="kernel"
PATCH_MAX_KERNEL[64]="25.99.99"
PATCH_MIN_KERNEL[64]="25.0.0"

TOTAL_PATCHES=65

# Show system info
echo "Author: N.Mano"
echo "System Configuration:"
echo "  macOS: $(sw_vers -productVersion)"
echo "  Kernel: $(uname -r)"
echo "  All patches configured for Kernel 25.2.0"
echo "  CPU Support: 13th Gen Raptor Lake (i9-13900K focused)"
echo "  Total Patches: $TOTAL_PATCHES"
echo ""

# Update detect_cpu_type function to recognize i9-13900K
detect_cpu_type() {
    echo "=== CPU DETECTION ==="
    echo ""
    
    CPU_BRAND=$(sysctl -n machdep.cpu.brand_string)
    CPU_MODEL=$(sysctl -n machdep.cpu.model)
    
    echo "Detected CPU: $CPU_BRAND"
    echo "CPU Model: $CPU_MODEL"
    echo ""
    
    # Determine CPU type
    if [[ "$CPU_BRAND" == *"i9-13900K"* ]]; then
        echo "✅ Detected: Intel Core i9-13900K (Raptor Lake)"
        echo "   This patch set is specifically optimized for your CPU"
        echo "   Patches 1-65: ENABLED for i9-13900K"
        CPU_TYPE="i9_13900k"
    elif [[ "$CPU_BRAND" == *"i9-14900K"* ]] || [[ "$CPU_BRAND" == *"i9-14900KF"* ]]; then
        echo "✅ Detected: Intel Core i9-14900K (Raptor Lake Refresh)"
        echo "   Patches 1-65: ENABLED with 14th Gen optimizations"
        echo "   Special patch 55: 14th Gen CPU ID"
        CPU_TYPE="i9_14900k"
    elif [[ "$CPU_BRAND" == *"i7-13700K"* ]] || [[ "$CPU_BRAND" == *"i7-13700KF"* ]]; then
        echo "✅ Detected: Intel Core i7-13700K (Raptor Lake)"
        echo "   Patches 1-65: ENABLED"
        echo "   Special patches: 59 (8P+8E topology)"
        CPU_TYPE="i7_13700k"
    elif [[ "$CPU_BRAND" == *"i5-13600K"* ]] || [[ "$CPU_BRAND" == *"i5-13600KF"* ]]; then
        echo "✅ Detected: Intel Core i5-13600K (Raptor Lake)"
        echo "   Patches 1-65: ENABLED"
        echo "   Special patches: 60 (6P+8E topology)"
        CPU_TYPE="i5_13600k"
    elif [[ "$CPU_BRAND" == *"i9-13"* ]]; then
        echo "✅ Detected: Intel Core i9 13th Gen (Raptor Lake)"
        echo "   Patches 1-65: ENABLED"
        echo "   Optimized for Raptor Lake architecture"
        CPU_TYPE="i9_13gen"
    elif [[ "$CPU_BRAND" == *"i7-13"* ]]; then
        echo "✅ Detected: Intel Core i7 13th Gen (Raptor Lake)"
        echo "   Patches 1-65: ENABLED"
        echo "   Optimized for Raptor Lake architecture"
        CPU_TYPE="i7_13gen"
    elif [[ "$CPU_BRAND" == *"i5-13"* ]]; then
        echo "✅ Detected: Intel Core i5 13th Gen (Raptor Lake)"
        echo "   Patches 1-65: ENABLED"
        echo "   Optimized for Raptor Lake architecture"
        CPU_TYPE="i5_13gen"
    elif [[ "$CPU_BRAND" == *"i9-12"* ]]; then
        echo "⚠️  Detected: Intel Core i9 12th Gen (Alder Lake)"
        echo "   Patches 1-65: ENABLED with Alder Lake support"
        echo "   Note: Originally designed for Raptor Lake"
        CPU_TYPE="i9_12gen"
    else
        echo "⚠️  Unknown CPU type"
        echo "   Using all 65 patches (Raptor Lake optimized)"
        echo "   Test and monitor system stability"
        CPU_TYPE="universal"
    fi
    
    echo ""
    echo "=== PATCH RECOMMENDATIONS ==="
    echo ""
    echo "ESSENTIAL (All Raptor Lake CPUs):"
    echo "- Patches 1-10: Core Raptor Lake support (ENABLED by default)"
    echo "- Patches 11-20: CPU recognition and topology"
    echo "- Patches 21-30: Performance unlocks"
    echo ""
    echo "CRITICAL FOR i9-13900K:"
    echo "- Patch 1: Raptor Lake CPU ID"
    echo "- Patch 7: CPU topology fix"
    echo "- Patch 12: CPU Ratio Extension"
    echo "- Patch 13: Power Limit Bypass"
    echo "- Patch 31: Max Turbo 5.8GHz fix"
    echo ""
    
    if [[ "$CPU_TYPE" == "i9_13900k" ]]; then
        echo "=== i9-13900K SPECIFIC ==="
        echo "✅ This patch set is specifically optimized for i9-13900K"
        echo "   All 65 patches are relevant for your CPU"
        echo "   Enable all patches for best performance"
    fi
    
    echo ""
    echo "=== INSTALLATION STEPS ==="
    echo "1. Enable all 65 patches for i9-13900K"
    echo "2. Test on USB installer first"
    echo "3. Monitor thermals and performance"
    echo "4. Adjust power limits if needed"
}

show_menu() {
    echo "=========================================="
    echo "   RAPTOR LAKE KERNEL PATCH UTILITIES"
    echo "   Author: N.Mano"
    echo "   Configured for KERNEL 25.2.0"
    echo "   Total Patches: $TOTAL_PATCHES"
    echo "   Optimized for i9-13900K"
    echo "=========================================="
    echo ""
    
    echo "Author: N.Mano"
    echo "Your system: macOS $(sw_vers -productVersion) with Kernel $(uname -r)"
    echo "All $TOTAL_PATCHES patches configured for Kernel 25.2.0"
    echo "CPU Support: Raptor Lake (13th Gen) focused, i9-13900K optimized"
    echo ""
    
    echo "Select utility:"
    echo "1. Detect CPU type and recommend patches"
    echo "2. List all $TOTAL_PATCHES patches (Kernel 25.2.0)"
    echo "3. Count enabled vs disabled patches"
    echo "4. Export all patches with Find/Replace (Hex format)"
    echo "5. Create patch documentation"
    echo "6. Create config.plist with patches (OpenCore & Clover)"
    echo "7. Run system verification"
    echo "8. Compare before/after verification"
    echo "9. Apply patches with verification"
    echo "10. Check kernel compatibility"
    echo "11. Update patches for different kernel version"
    echo "12. CPU-Specific Configuration Generator"
    echo "13. Export all patches to XML format"
    echo "14. Validate patch consistency"
    echo "15. Exit"
    echo ""
    read -p "Choice [1-15]: " choice
    echo ""
    
    case $choice in
        1) detect_cpu_type ;;
        2) list_patches ;;
        3) count_patches ;;
        4) export_patches_hex ;;
        5) create_docs ;;
        6) create_config_oc_clover ;;
        7) run_verification ;;
        8) compare_verification ;;
        9) apply_patches_with_verification ;;
        10) check_kernel_compatibility ;;
        11) update_patch_versions ;;
        12) create_cpu_specific_config ;;
        13) export_patches_xml ;;
        14) validate_patches ;;
        15) exit 0 ;;
        *) 
            echo "Invalid choice"
            echo "Please select 1-15"
            ;;
    esac
}

# Updated list_patches function for 65 patches
list_patches() {
    echo "=========================================="
    echo "   LIST ALL $TOTAL_PATCHES RAPTOR LAKE PATCHES"
    echo "   Author: N.Mano"
    echo "   Kernel 25.2.0 Configuration"
    echo "   Optimized for i9-13900K"
    echo "=========================================="
    echo ""
    
    echo "Total Patches: $TOTAL_PATCHES"
    echo "Author: N.Mano"
    echo "Configured for: Kernel 25.2.0"
    echo "Compatible with: 25.0.0 to 25.99.99"
    echo "CPU Support: Raptor Lake (13th Gen) - i9-13900K optimized"
    echo ""
    echo "🎯 SPECIFICALLY OPTIMIZED FOR i9-13900K 🎯"
    echo ""
    
    echo "=== PATCH GROUPS ==="
    echo ""
    echo "GROUP 1: CORE RAPTOR LAKE SUPPORT (1-10)"
    echo "----------------------------------------"
    for i in $(seq 0 9); do
        PATCH_NUM=$((i + 1))
        COMMENT="${PATCH_COMMENTS[$i]}"
        printf "%3d. ✓ ENABLED | %s\n" "$PATCH_NUM" "$COMMENT"
    done
    
    echo ""
    echo "GROUP 2: CPU RECOGNITION & TOPOLOGY (11-20)"
    echo "------------------------------------------"
    for i in $(seq 10 19); do
        PATCH_NUM=$((i + 1))
        COMMENT="${PATCH_COMMENTS[$i]}"
        printf "%3d. ✓ ENABLED | %s\n" "$PATCH_NUM" "$COMMENT"
    done
    
    echo ""
    echo "GROUP 3: PERFORMANCE UNLOCKS (21-30)"
    echo "-----------------------------------"
    for i in $(seq 20 29); do
        PATCH_NUM=$((i + 1))
        COMMENT="${PATCH_COMMENTS[$i]}"
        printf "%3d. ✓ ENABLED | ⚡ %s\n" "$PATCH_NUM" "$COMMENT"
    done
    
    echo ""
    echo "GROUP 4: CORE COUNT & POWER MANAGEMENT (31-40)"
    echo "--------------------------------------------"
    for i in $(seq 30 39); do
        PATCH_NUM=$((i + 1))
        COMMENT="${PATCH_COMMENTS[$i]}"
        printf "%3d. ✓ ENABLED | 🔧 %s\n" "$PATCH_NUM" "$COMMENT"
    done
    
    echo ""
    echo "GROUP 5: REGISTER & MSR FIXES (41-50)"
    echo "------------------------------------"
    for i in $(seq 40 49); do
        PATCH_NUM=$((i + 1))
        COMMENT="${PATCH_COMMENTS[$i]}"
        printf "%3d. ✓ ENABLED | 🛠️  %s\n" "$PATCH_NUM" "$COMMENT"
    done
    
    echo ""
    echo "GROUP 6: UNIVERSAL & EXTENDED SUPPORT (51-65)"
    echo "-------------------------------------------"
    for i in $(seq 50 64); do
        PATCH_NUM=$((i + 1))
        COMMENT="${PATCH_COMMENTS[$i]}"
        printf "%3d. ✓ ENABLED | 🌍 %s\n" "$PATCH_NUM" "$COMMENT"
    done
    
    echo ""
    echo "=== RECOMMENDED USAGE ==="
    echo "1. Enable ALL patches 1-65 for i9-13900K"
    echo "2. For other Raptor Lake CPUs: Enable all patches"
    echo "3. For Alder Lake: Enable patches 1-65 (test first)"
    echo "4. Monitor system stability and thermals"
}

# Updated count_patches function
count_patches() {
    echo "=========================================="
    echo "   RAPTOR LAKE PATCH STATISTICS"
    echo "   Author: N.Mano"
    echo "   Kernel 25.2.0 Configuration"
    echo "=========================================="
    echo ""
    
    echo "📊 PATCH DISTRIBUTION:"
    echo "   Total Patches: $TOTAL_PATCHES"
    echo "   Core CPU/XCPM Patches: 10 patches"
    echo "   CPU Recognition Patches: 10 patches"
    echo "   Performance Patches: 10 patches"
    echo "   Core Count Fixes: 10 patches"
    echo "   Register/MSR Fixes: 10 patches"
    echo "   Extended Support Patches: 15 patches"
    echo ""
    
    echo "🎯 CPU SUPPORT:"
    echo "   Intel 13th Gen (Raptor Lake): ✓ Primary optimization"
    echo "   i9-13900K: ✓ Specifically optimized"
    echo "   i7-13700K: ✓ Full support"
    echo "   i5-13600K: ✓ Full support"
    echo "   Intel 12th Gen (Alder Lake): ✓ Compatible"
    echo "   Intel 14th Gen (Raptor Lake Refresh): ✓ Supported"
    echo ""
    
    echo "🔧 PATCH TYPES:"
    echo "   CPU ID Patches: 3 patches"
    echo "   XCPM Power Management: 8 patches"
    echo "   Core Count Fixes: 12 patches"
    echo "   CPU Topology: 4 patches"
    echo "   Performance Unlocks: 8 patches"
    echo "   Power Limits: 3 patches"
    echo "   MSR/Register Fixes: 10 patches"
    echo ""
    
    echo "👤 AUTHOR INFORMATION:"
    echo "   All patches by: N.Mano"
    echo "   Configured for: Kernel 25.2.0"
    echo "   Compatibility range: 25.0.0 to 25.99.99"
    echo "   Primary target: i9-13900K Raptor Lake"
}

# Function to convert base64 to hex
base64_to_hex() {
    echo "$1" | base64 -d | xxd -p | tr -d '\n' | sed 's/\(..\)/\1 /g'
}

# Export patches with Find/Replace in hex format
export_patches_hex() {
    echo "=========================================="
    echo "   EXPORT ALL 65 PATCHES (Find/Replace - HEX)"
    echo "   Author: N.Mano"
    echo "   Kernel 25.2.0"
    echo "   Raptor Lake Optimized"
    echo "=========================================="
    echo ""
    
    OUTPUT_FILE="raptor_lake_patches_hex_$(date +%Y%m%d_%H%M%S).txt"
    echo "Exporting patches to: $OUTPUT_FILE"
    echo ""
    
    {
        echo "# RAPTOR LAKE KERNEL PATCHES - HEX FORMAT"
        echo "# Generated by N.Mano"
        echo "# Date: $(date)"
        echo "# Kernel: 25.2.0"
        echo "# Total Patches: $TOTAL_PATCHES"
        echo "# Optimized for: i9-13900K Raptor Lake"
        echo "# Format: Find (Hex) | Replace (Hex) | Comment"
        echo ""
        echo "========================================"
        echo "        PATCHES 1-10: CORE SUPPORT"
        echo "========================================"
        echo ""
        
        for i in $(seq 0 9); do
            PATCH_NUM=$((i+1))
            FIND_HEX=$(base64_to_hex "${PATCH_FIND_DATA[$i]}")
            REPLACE_HEX=$(base64_to_hex "${PATCH_REPLACE_DATA[$i]}")
            echo "Patch $PATCH_NUM: ${PATCH_COMMENTS[$i]}"
            echo "  Find (Hex):    $FIND_HEX"
            echo "  Replace (Hex): $REPLACE_HEX"
            echo "  Length: ${#FIND_HEX} bytes"
            echo ""
        done
        
        echo "========================================"
        echo "        PATCHES 11-20: RECOGNITION"
        echo "========================================"
        echo ""
        
        for i in $(seq 10 19); do
            PATCH_NUM=$((i+1))
            FIND_HEX=$(base64_to_hex "${PATCH_FIND_DATA[$i]}")
            REPLACE_HEX=$(base64_to_hex "${PATCH_REPLACE_DATA[$i]}")
            echo "Patch $PATCH_NUM: ${PATCH_COMMENTS[$i]}"
            echo "  Find (Hex):    $FIND_HEX"
            echo "  Replace (Hex): $REPLACE_HEX"
            echo "  Length: ${#FIND_HEX} bytes"
            echo ""
        done
        
        echo "========================================"
        echo "        PATCHES 21-30: PERFORMANCE"
        echo "========================================"
        echo ""
        
        for i in $(seq 20 29); do
            PATCH_NUM=$((i+1))
            FIND_HEX=$(base64_to_hex "${PATCH_FIND_DATA[$i]}")
            REPLACE_HEX=$(base64_to_hex "${PATCH_REPLACE_DATA[$i]}")
            echo "Patch $PATCH_NUM: ${PATCH_COMMENTS[$i]}"
            echo "  Find (Hex):    $FIND_HEX"
            echo "  Replace (Hex): $REPLACE_HEX"
            echo "  Length: ${#FIND_HEX} bytes"
            echo ""
        done
        
        echo "========================================"
        echo "        PATCHES 31-40: CORE COUNT"
        echo "========================================"
        echo ""
        
        for i in $(seq 30 39); do
            PATCH_NUM=$((i+1))
            FIND_HEX=$(base64_to_hex "${PATCH_FIND_DATA[$i]}")
            REPLACE_HEX=$(base64_to_hex "${PATCH_REPLACE_DATA[$i]}")
            echo "Patch $PATCH_NUM: ${PATCH_COMMENTS[$i]}"
            echo "  Find (Hex):    $FIND_HEX"
            echo "  Replace (Hex): $REPLACE_HEX"
            echo "  Length: ${#FIND_HEX} bytes"
            echo ""
        done
        
        echo "========================================"
        echo "        PATCHES 41-50: REGISTER FIXES"
        echo "========================================"
        echo ""
        
        for i in $(seq 40 49); do
            PATCH_NUM=$((i+1))
            FIND_HEX=$(base64_to_hex "${PATCH_FIND_DATA[$i]}")
            REPLACE_HEX=$(base64_to_hex "${PATCH_REPLACE_DATA[$i]}")
            echo "Patch $PATCH_NUM: ${PATCH_COMMENTS[$i]}"
            echo "  Find (Hex):    $FIND_HEX"
            echo "  Replace (Hex): $REPLACE_HEX"
            echo "  Length: ${#FIND_HEX} bytes"
            echo ""
        done
        
        echo "========================================"
        echo "        PATCHES 51-65: EXTENDED SUPPORT"
        echo "========================================"
        echo ""
        
        for i in $(seq 50 64); do
            PATCH_NUM=$((i+1))
            FIND_HEX=$(base64_to_hex "${PATCH_FIND_DATA[$i]}")
            REPLACE_HEX=$(base64_to_hex "${PATCH_REPLACE_DATA[$i]}")
            echo "Patch $PATCH_NUM: ${PATCH_COMMENTS[$i]}"
            echo "  Find (Hex):    $FIND_HEX"
            echo "  Replace (Hex): $REPLACE_HEX"
            echo "  Length: ${#FIND_HEX} bytes"
            echo ""
        done
        
        echo "========================================"
        echo "           HEX CONVERSION NOTES"
        echo "========================================"
        echo "1. Base64 to Hex conversion complete for all 65 patches"
        echo "2. All hex values are space-separated for readability"
        echo "3. Byte counts shown for each patch"
        echo "4. Use for manual patching or verification"
        echo ""
        
    } > "$OUTPUT_FILE"
    
    echo "✅ Hex export complete: $OUTPUT_FILE"
    echo "File contains all $TOTAL_PATCHES patches in hex format"
    echo ""
    
    # Show sample of first patch
    echo "=== SAMPLE OUTPUT (Patch 1 - Raptor Lake Support) ==="
    FIND_HEX=$(base64_to_hex "${PATCH_FIND_DATA[0]}")
    REPLACE_HEX=$(base64_to_hex "${PATCH_REPLACE_DATA[0]}")
    echo "Patch 1: ${PATCH_COMMENTS[0]}"
    echo "Find (Hex):    $FIND_HEX"
    echo "Replace (Hex): $REPLACE_HEX"
}

# Create documentation
create_docs() {
    echo "=========================================="
    echo "   CREATE RAPTOR LAKE PATCH DOCUMENTATION"
    echo "   Author: N.Mano"
    echo "=========================================="
    echo ""
    
    DOC_FILE="raptor_lake_patch_docs_$(date +%Y%m%d_%H%M%S).md"
    echo "Creating documentation: $DOC_FILE"
    echo ""
    
    {
        echo "# Raptor Lake Kernel Patch Documentation"
        echo "**Author:** N.Mano  \n**Kernel Version:** 25.2.0  \n**Total Patches:** $TOTAL_PATCHES"
        echo "**Primary Target:** Intel Core i9-13900K (Raptor Lake)"
        echo ""
        echo "## Overview"
        echo "This document contains $TOTAL_PATCHES kernel patches specifically optimized for Intel 13th Gen Raptor Lake CPUs, with primary focus on i9-13900K."
        echo ""
        echo "## Patch Groups"
        echo ""
        echo "### Group 1: Core Raptor Lake Support (Patches 1-10)"
        echo "Essential patches for Raptor Lake CPU recognition and basic functionality."
        echo ""
        for i in $(seq 0 9); do
            PATCH_NUM=$((i+1))
            echo "$PATCH_NUM. **${PATCH_COMMENTS[$i]}**"
        done
        echo ""
        echo "### Group 2: CPU Recognition & Topology (Patches 11-20)"
        echo "Patches for correct CPU model detection and core topology."
        echo ""
        echo "### Group 3: Performance Unlocks (Patches 21-30)"
        echo "Performance enhancements and turbo boost optimizations."
        echo ""
        echo "### Group 4: Core Count & Power Management (Patches 31-40)"
        echo "Fixes for core count detection and power management."
        echo ""
        echo "### Group 5: Register & MSR Fixes (Patches 41-50)"
        echo "Low-level register and MSR modifications."
        echo ""
        echo "### Group 6: Universal & Extended Support (Patches 51-65)"
        echo "Extended support for other CPU models and universal fixes."
        echo ""
        echo "## Usage Instructions"
        echo "1. Enable all 65 patches for i9-13900K"
        echo "2. For other Raptor Lake CPUs: Enable all patches"
        echo "3. For Alder Lake: Test compatibility first"
        echo "4. Always test on USB installer before production"
        echo ""
        echo "## Compatibility"
        echo "- macOS Kernel: 25.0.0 to 25.99.99"
        echo "- Primary CPU: Intel Core i9-13900K (Raptor Lake)"
        echo "- Also supports: All 13th Gen Raptor Lake CPUs"
        echo "- Compatible with: 12th Gen Alder Lake, 14th Gen Raptor Lake Refresh"
        echo ""
        echo "## Critical Patches for i9-13900K"
        echo "1. Patch 1: Raptor Lake CPU ID"
        echo "2. Patch 7: CPU topology fix"
        echo "3. Patch 12: CPU Ratio Extension"
        echo "4. Patch 13: Power Limit Bypass"
        echo "5. Patch 31: Max Turbo 5.8GHz fix"
        echo ""
    } > "$DOC_FILE"
    
    echo "✅ Documentation created: $DOC_FILE"
}

# Create config.plist with patches for OpenCore AND Clover
create_config_oc_clover() {
    echo "=========================================="
    echo "   CREATE CONFIG.PLIST WITH 65 PATCHES"
    echo "   Support: OpenCore & Clover"
    echo "   Author: N.Mano"
    echo "   Raptor Lake Optimized"
    echo "=========================================="
    echo ""
    
    # Create OpenCore config
    OC_CONFIG="config_oc_raptor_lake_$(date +%Y%m%d_%H%M%S).plist"
    echo "Creating OpenCore config.plist: $OC_CONFIG"
    
    {
        echo '<?xml version="1.0" encoding="UTF-8"?>'
        echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">'
        echo '<plist version="1.0">'
        echo '<dict>'
        echo '    <key>ACPI</key>'
        echo '    <dict>'
        echo '        <key>Add</key>'
        echo '        <array/>'
        echo '        <key>Delete</key>'
        echo '        <array/>'
        echo '        <key>Patch</key>'
        echo '        <array/>'
        echo '    </dict>'
        echo '    <key>Booter</key>'
        echo '    <dict/>'
        echo '    <key>DeviceProperties</key>'
        echo '    <dict/>'
        echo '    <key>Kernel</key>'
        echo '    <dict>'
        echo '        <key>Add</key>'
        echo '        <array/>'
        echo '        <key>Block</key>'
        echo '        <array/>'
        echo '        <key>Patch</key>'
        echo '        <array>'
        
        for i in $(seq 0 $(($TOTAL_PATCHES-1))); do
            echo '            <dict>'
            echo "                <key>Arch</key>"
            if [ -n "${PATCH_ARCH[$i]}" ] && [ "${PATCH_ARCH[$i]}" != "Any" ]; then
                echo "                <string>${PATCH_ARCH[$i]}</string>"
            else
                echo "                <string>x86_64</string>"
            fi
            
            if [ -n "${PATCH_BASE[$i]}" ]; then
                echo "                <key>Base</key>"
                echo "                <string>${PATCH_BASE[$i]}</string>"
            fi
            
            echo "                <key>Comment</key>"
            echo "                <string>${PATCH_COMMENTS[$i]}</string>"
            
            echo "                <key>Count</key>"
            echo "                <integer>${PATCH_COUNT[$i]}</integer>"
            
            echo "                <key>Enabled</key>"
            echo "                <true/>"
            
            echo "                <key>Find</key>"
            echo "                <data>${PATCH_FIND_DATA[$i]}</data>"
            
            echo "                <key>Identifier</key>"
            echo "                <string>${PATCH_IDENTIFIER[$i]}</string>"
            
            echo "                <key>Limit</key>"
            echo "                <integer>0</integer>"
            
            echo "                <key>Mask</key>"
            echo "                <data></data>"
            
            echo "                <key>MaxKernel</key>"
            echo "                <string>${PATCH_MAX_KERNEL[$i]}</string>"
            
            echo "                <key>MinKernel</key>"
            if [ "${PATCH_MIN_KERNEL[$i]}" = "22.0.0" ]; then
                echo "                <string>22.0.0</string>"
            elif [ "${PATCH_MIN_KERNEL[$i]}" = "25.00.00" ]; then
                echo "                <string>25.0.0</string>"
            elif [ "${PATCH_MIN_KERNEL[$i]}" = "25.2.0" ]; then
                echo "                <string>25.2.0</string>"
            else
                echo "                <string>25.0.0</string>"
            fi
            
            echo "                <key>Replace</key>"
            echo "                <data>${PATCH_REPLACE_DATA[$i]}</data>"
            
            echo "                <key>ReplaceMask</key>"
            echo "                <data></data>"
            
            echo "                <key>Skip</key>"
            echo "                <integer>0</integer>"
            
            echo '            </dict>'
        done
        
        echo '        </array>'
        echo '        <key>Quirks</key>'
        echo '        <dict>'
        echo '            <key>AppleCpuPmCfgLock</key>'
        echo '            <false/>'
        echo '            <key>AppleXcpmCfgLock</key>'
        echo '            <false/>'
        echo '            <key>AppleXcpmExtraMsrs</key>'
        echo '            <true/>'
        echo '            <key>AppleXcpmForceBoost</key>'
        echo '            <false/>'
        echo '            <key>CustomSMBIOSGuid</key>'
        echo '            <false/>'
        echo '            <key>DisableIoMapper</key>'
        echo '            <false/>'
        echo '            <key>ExternalDiskIcons</key>'
        echo '            <false/>'
        echo '        </dict>'
        echo '    </dict>'
        echo '    <key>Misc</key>'
        echo '    <dict/>'
        echo '    <key>NVRAM</key>'
        echo '    <dict/>'
        echo '    <key>PlatformInfo</key>'
        echo '    <dict/>'
        echo '    <key>UEFI</key>'
        echo '    <dict/>'
        echo '</dict>'
        echo '</plist>'
    } > "$OC_CONFIG"
    
    echo "✅ OpenCore config created: $OC_CONFIG"
    
    # Create Clover config
    echo ""
    echo "Creating Clover config.plist..."
    CLOVER_CONFIG="config_clover_raptor_lake_$(date +%Y%m%d_%H%M%S).plist"
    
    {
        echo '<?xml version="1.0" encoding="UTF-8"?>'
        echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">'
        echo '<plist version="1.0">'
        echo '<dict>'
        echo '    <key>ACPI</key>'
        echo '    <dict/>'
        echo '    <key>Boot</key>'
        echo '    <dict/>'
        echo '    <key>Devices</key>'
        echo '    <dict/>'
        echo '    <key>Graphics</key>'
        echo '    <dict/>'
        echo '    <key>KernelAndKextPatches</key>'
        echo '    <dict>'
        echo '        <key>KernelCpu</key>'
        echo '        <false/>'
        echo '        <key>KernelLapic</key>'
        echo '        <false/>'
        echo '        <key>KernelPm</key>'
        echo '        <true/>'
        echo '        <key>KernelXCPM</key>'
        echo '        <true/>'
        echo '        <key>KextsToPatch</key>'
        echo '        <array>'
        
        for i in $(seq 0 $(($TOTAL_PATCHES-1))); do
            echo '            <dict>'
            echo "                <key>Comment</key>"
            echo "                <string>${PATCH_COMMENTS[$i]}</string>"
            
            echo "                <key>Disabled</key>"
            echo "                <false/>"
            
            echo "                <key>Find</key>"
            echo "                <data>${PATCH_FIND_DATA[$i]}</data>"
            
            echo "                <key>Name</key>"
            echo "                <string>${PATCH_IDENTIFIER[$i]}</string>"
            
            echo "                <key>Replace</key>"
            echo "                <data>${PATCH_REPLACE_DATA[$i]}</data>"
            
            echo '            </dict>'
        done
        
        echo '        </array>'
        echo '    </dict>'
        echo '    <key>RtVariables</key>'
        echo '    <dict/>'
        echo '    <key>SMBIOS</key>'
        echo '    <dict/>'
        echo '    <key>SystemParameters</key>'
        echo '    <dict/>'
        echo '</dict>'
        echo '</plist>'
    } > "$CLOVER_CONFIG"
    
    echo "✅ Clover config created: $CLOVER_CONFIG"
    echo ""
    echo "=== SUMMARY ==="
    echo "OpenCore config: $OC_CONFIG"
    echo "  - Contains all $TOTAL_PATCHES patches"
    echo "  - All patches enabled for i9-13900K"
    echo "  - Full OpenCore 0.9.0+ compatible structure"
    echo ""
    echo "Clover config: $CLOVER_CONFIG"
    echo "  - Contains all $TOTAL_PATCHES patches"
    echo "  - All patches enabled"
    echo "  - Uses KextsToPatch array (Clover style)"
    echo ""
    echo "⚠️  IMPORTANT: These are template configs!"
    echo "You need to add your specific ACPI, DeviceProperties, and SMBIOS settings."
}

# System verification
run_verification() {
    echo "=========================================="
    echo "   SYSTEM VERIFICATION"
    echo "   Author: N.Mano"
    echo "   Raptor Lake Optimized"
    echo "=========================================="
    echo ""
    
    echo "=== System Information ==="
    echo "macOS Version: $(sw_vers -productVersion)"
    echo "Kernel Version: $(uname -r)"
    echo "System Uptime: $(uptime)"
    echo ""
    
    echo "=== CPU Information ==="
    CPU_BRAND=$(sysctl -n machdep.cpu.brand_string)
    echo "CPU: $CPU_BRAND"
    echo "CPU Cores: $(sysctl -n machdep.cpu.core_count)"
    echo "CPU Threads: $(sysctl -n machdep.cpu.thread_count)"
    echo "CPU Family: $(sysctl -n machdep.cpu.family)"
    echo "CPU Model: $(sysctl -n machdep.cpu.model)"
    echo ""
    
    echo "=== Memory Information ==="
    sysctl -n hw.memsize | awk '{print "Total RAM: " $1/1073741824 " GB"}'
    echo ""
    
    echo "=== Power Management ==="
    if pmset -g | grep -q "hibernatemode"; then
        echo "✅ Power Management is active"
    else
        echo "⚠️  Power Management may not be fully active"
    fi
    echo ""
    
    echo "=== Raptor Lake Specific Checks ==="
    if [[ "$CPU_BRAND" == *"13"* ]] || [[ "$CPU_BRAND" == *"13900"* ]] || [[ "$CPU_BRAND" == *"13700"* ]] || [[ "$CPU_BRAND" == *"13600"* ]]; then
        echo "✅ Detected 13th Gen Raptor Lake CPU"
        echo "   This patch set is optimized for your CPU"
    else
        echo "⚠️  Not a Raptor Lake CPU"
        echo "   Patches may still work but test thoroughly"
    fi
    echo ""
}

# Compare before/after verification
compare_verification() {
    echo "=========================================="
    echo "   COMPARE BEFORE/AFTER VERIFICATION"
    echo "   Author: N.Mano"
    echo "   Raptor Lake Focused"
    echo "=========================================="
    echo ""
    
    echo "This function shows expected changes with the 65 Raptor Lake patches."
    echo ""
    
    echo "=== BEFORE PATCHES (Raptor Lake) ==="
    echo "1. CPU may be recognized as Alder Lake or unknown"
    echo "2. Core count incorrect (may show 8 instead of 24 for i9-13900K)"
    echo "3. Power management limited or non-functional"
    echo "4. Turbo boost may not work correctly"
    echo "5. Performance states limited"
    echo "6. XCPM may fail to initialize"
    echo ""
    
    echo "=== AFTER PATCHES (Expected Results) ==="
    echo "1. ✅ CPU correctly recognized as Raptor Lake"
    echo "2. ✅ Core count: 24 cores detected (i9-13900K)"
    echo "3. ✅ Power management: Full XCPM support"
    echo "4. ✅ Turbo boost: Up to 5.8GHz enabled"
    echo "5. ✅ Performance states: All P-states available"
    echo "6. ✅ XCPM: Fully functional with MSR support"
    echo "7. ✅ CPU topology: Correct P-core/E-core configuration"
    echo "8. ✅ Power limits: Properly configured for K-series"
    echo ""
    
    echo "=== VERIFICATION STEPS ==="
    echo "1. Check 'About This Mac' for correct CPU info"
    echo "2. Run 'sysctl machdep.cpu' to verify core count"
    echo "3. Monitor CPU frequencies with Intel Power Gadget"
    echo "4. Check system logs for XCPM initialization"
    echo "5. Test performance with Cinebench or Geekbench"
    echo "6. Monitor thermals under load"
    echo "7. Verify power consumption matches expectations"
    echo ""
}

# Apply patches with verification
apply_patches_with_verification() {
    echo "=========================================="
    echo "   APPLY RAPTOR LAKE PATCHES WITH VERIFICATION"
    echo "   Author: N.Mano"
    echo "   ⚠️  WARNING: This is a simulation"
    echo "=========================================="
    echo ""
    
    echo "This function shows what would happen during patch application."
    echo "No actual changes are made to your system."
    echo ""
    
    echo "Step 1: Backup current kernel"
    echo "  ✅ Creating backup of kernel at /System/Library/Kernels/kernel.backup"
    echo ""
    
    echo "Step 2: Apply Raptor Lake Patches (1-65)"
    for i in $(seq 0 64); do
        PATCH_NUM=$((i+1))
        if [ $((PATCH_NUM % 10)) -eq 0 ]; then
            echo "  ✅ Applied patch $PATCH_NUM: ${PATCH_COMMENTS[$i]:0:40}..."
        fi
    done
    echo ""
    
    echo "Step 3: Apply critical i9-13900K patches"
    echo "  ✅ Patch 1: Raptor Lake CPU ID"
    echo "  ✅ Patch 7: CPU topology fix"
    echo "  ✅ Patch 12: CPU Ratio Extension"
    echo "  ✅ Patch 13: Power Limit Bypass"
    echo "  ✅ Patch 31: Max Turbo 5.8GHz fix"
    echo ""
    
    echo "Step 4: Rebuild kernel cache"
    echo "  ✅ Kernel cache rebuilt successfully"
    echo ""
    
    echo "Step 5: Verification"
    echo "  ✅ All 65 patches applied successfully"
    echo "  ✅ System optimized for Raptor Lake"
    echo "  ✅ Ready for reboot"
    echo ""
    
    echo "⚠️  IMPORTANT: This was a simulation only!"
    echo "To actually apply patches, use proper tools like OpenCore"
    echo "Always test on USB installer first!"
    echo ""
}

# Check kernel compatibility
check_kernel_compatibility() {
    echo "=========================================="
    echo "   KERNEL COMPATIBILITY CHECK"
    echo "   Author: N.Mano"
    echo "   Raptor Lake Patches"
    echo "=========================================="
    echo ""
    
    CURRENT_KERNEL=$(uname -r)
    echo "Current Kernel: $CURRENT_KERNEL"
    echo "Patch Configuration: 25.2.0"
    echo "Compatible Range: 22.0.0 to 25.99.99 (varies by patch)"
    echo "Total Patches: $TOTAL_PATCHES"
    echo ""
    
    # Extract major version
    KERNEL_MAJOR=$(echo $CURRENT_KERNEL | cut -d. -f1)
    
    if [ "$KERNEL_MAJOR" -eq 25 ] || [ "$KERNEL_MAJOR" -eq 24 ] || [ "$KERNEL_MAJOR" -eq 23 ] || [ "$KERNEL_MAJOR" -eq 22 ]; then
        echo "✅ COMPATIBLE: Current kernel is within compatible range"
        echo ""
        echo "Patch Status:"
        echo "- Most patches: MinKernel 25.0.0, MaxKernel 25.99.99"
        echo "- Some patches: MinKernel 22.0.0"
        echo "- Your kernel ($CURRENT_KERNEL) is compatible"
    elif [ "$KERNEL_MAJOR" -lt 22 ]; then
        echo "⚠️  CAUTION: Current kernel ($CURRENT_KERNEL) is older than minimum (22.0.0)"
        echo "Some patches may not work correctly"
        echo "Consider updating to newer macOS version"
    else
        echo "❌ INCOMPATIBLE: Current kernel ($CURRENT_KERNEL) is newer than maximum (25.99.99)"
        echo "Patches need to be updated for newer kernel"
        echo "Contact N.Mano for updated patches"
    fi
    echo ""
}

# Update patches for different kernel version
update_patch_versions() {
    echo "=========================================="
    echo "   UPDATE PATCH VERSIONS"
    echo "   Author: N.Mano"
    echo "=========================================="
    echo ""
    
    echo "Current patch configuration:"
    echo "- Most patches: MinKernel 25.0.0, MaxKernel 25.99.99"
    echo "- Some patches: MinKernel 22.0.0 or 25.2.0"
    echo "- Configured for: Kernel 25.2.0"
    echo ""
    
    read -p "Enter new MinKernel version (e.g., 25.0.0): " NEW_MIN
    read -p "Enter new MaxKernel version (e.g., 25.99.99): " NEW_MAX
    echo ""
    
    echo "Updating all patches:"
    echo "MinKernel: $NEW_MIN"
    echo "MaxKernel: $NEW_MAX"
    echo ""
    
    # Update all patches
    for i in $(seq 0 $(($TOTAL_PATCHES-1))); do
        PATCH_MAX_KERNEL[$i]="$NEW_MAX"
        # Only update MinKernel if it's 25.x (not 22.0.0)
        if [ "${PATCH_MIN_KERNEL[$i]}" = "25.0.0" ] || [ "${PATCH_MIN_KERNEL[$i]}" = "25.2.0" ] || [ "${PATCH_MIN_KERNEL[$i]}" = "25.00.00" ]; then
            PATCH_MIN_KERNEL[$i]="$NEW_MIN"
        fi
    done
    
    echo "✅ Updated $TOTAL_PATCHES patches"
    echo "New version range: $NEW_MIN to $NEW_MAX"
    echo ""
    
    echo "=== SAMPLE PATCHES (Updated) ==="
    echo "Patch 1: ${PATCH_COMMENTS[0]}"
    echo "  MinKernel: ${PATCH_MIN_KERNEL[0]}"
    echo "  MaxKernel: ${PATCH_MAX_KERNEL[0]}"
    echo ""
    echo "Patch 9: ${PATCH_COMMENTS[8]}"
    echo "  MinKernel: ${PATCH_MIN_KERNEL[8]} (kept as 22.0.0)"
    echo "  MaxKernel: ${PATCH_MAX_KERNEL[8]}"
    echo ""
}

# CPU-Specific Configuration Generator
create_cpu_specific_config() {
    echo "=========================================="
    echo "   RAPTOR LAKE CPU CONFIGURATION GENERATOR"
    echo "   Author: N.Mano"
    echo "=========================================="
    echo ""
    
    CPU_BRAND=$(sysctl -n machdep.cpu.brand_string)
    echo "Detected CPU: $CPU_BRAND"
    echo ""
    
    echo "Select Raptor Lake CPU type for configuration:"
    echo "1. Intel Core i9-13900K (24-core, 32-thread)"
    echo "2. Intel Core i7-13700K (16-core, 24-thread)"
    echo "3. Intel Core i5-13600K (14-core, 20-thread)"
    echo "4. Other i9-13xxx (Raptor Lake)"
    echo "5. Other i7-13xxx (Raptor Lake)"
    echo "6. Other i5-13xxx (Raptor Lake)"
    echo "7. Custom configuration"
    echo ""
    
    read -p "Choice [1-7]: " cpu_choice
    echo ""
    
    CONFIG_FILE="raptor_lake_config_$(date +%Y%m%d_%H%M%S).txt"
    
    {
        echo "# RAPTOR LAKE CPU-SPECIFIC CONFIGURATION"
        echo "# Generated by N.Mano"
        echo "# Date: $(date)"
        echo "# Target CPU: $CPU_BRAND"
        echo "# Total Patches: $TOTAL_PATCHES"
        echo ""
        echo "## ESSENTIAL PATCHES (Enable All)"
        echo "Patches 1-65: All Raptor Lake patches"
        echo ""
        echo "## CPU-SPECIFIC NOTES"
        echo ""
    } > "$CONFIG_FILE"
    
    case $cpu_choice in
        1)
            echo "Intel Core i9-13900K Configuration" >> "$CONFIG_FILE"
            echo "=================================" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "CPU Specifications:" >> "$CONFIG_FILE"
            echo "- Cores: 24 (8P + 16E)" >> "$CONFIG_FILE"
            echo "- Threads: 32" >> "$CONFIG_FILE"
            echo "- Base Clock: 3.0 GHz" >> "$CONFIG_FILE"
            echo "- Max Turbo: 5.8 GHz" >> "$CONFIG_FILE"
            echo "- TDP: 125W (PL1), 253W (PL2)" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Critical Patches for i9-13900K:" >> "$CONFIG_FILE"
            echo "- Patch 1: Raptor Lake CPU ID" >> "$CONFIG_FILE"
            echo "- Patch 7: CPU topology (8P+16E)" >> "$CONFIG_FILE"
            echo "- Patch 12: CPU Ratio Extension" >> "$CONFIG_FILE"
            echo "- Patch 13: Power Limit Bypass" >> "$CONFIG_FILE"
            echo "- Patch 31: Max Turbo 5.8GHz fix" >> "$CONFIG_FILE"
            echo "- Patch 35-39: Core count fixes (24 cores)" >> "$CONFIG_FILE"
            echo "- Patch 62: 125W TDP power limits" >> "$CONFIG_FILE"
            ;;
        2)
            echo "Intel Core i7-13700K Configuration" >> "$CONFIG_FILE"
            echo "=================================" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "CPU Specifications:" >> "$CONFIG_FILE"
            echo "- Cores: 16 (8P + 8E)" >> "$CONFIG_FILE"
            echo "- Threads: 24" >> "$CONFIG_FILE"
            echo "- Base Clock: 3.4 GHz" >> "$CONFIG_FILE"
            echo "- Max Turbo: 5.4 GHz" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Important Patches:" >> "$CONFIG_FILE"
            echo "- Patch 59: CPU Topology for 8P+8E" >> "$CONFIG_FILE"
            echo "- Patch 56: Core Count 8 to 16" >> "$CONFIG_FILE"
            echo "- Patch 62: 125W TDP power limits" >> "$CONFIG_FILE"
            ;;
        3)
            echo "Intel Core i5-13600K Configuration" >> "$CONFIG_FILE"
            echo "=================================" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "CPU Specifications:" >> "$CONFIG_FILE"
            echo "- Cores: 14 (6P + 8E)" >> "$CONFIG_FILE"
            echo "- Threads: 20" >> "$CONFIG_FILE"
            echo "- Base Clock: 3.5 GHz" >> "$CONFIG_FILE"
            echo "- Max Turbo: 5.1 GHz" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Important Patches:" >> "$CONFIG_FILE"
            echo "- Patch 60: CPU Topology for 6P+8E" >> "$CONFIG_FILE"
            echo "- Patch 56: Core Count 8 to 16" >> "$CONFIG_FILE"
            echo "- Patch 62: 125W TDP power limits" >> "$CONFIG_FILE"
            ;;
        4)
            echo "Other i9-13xxx Raptor Lake Configuration" >> "$CONFIG_FILE"
            echo "=======================================" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Enable all 65 patches" >> "$CONFIG_FILE"
            echo "Adjust core count patches as needed:" >> "$CONFIG_FILE"
            echo "- i9-13900: Use 24-core patches" >> "$CONFIG_FILE"
            echo "- i9-13900F: Use 24-core patches" >> "$CONFIG_FILE"
            echo "- i9-13900KF: Use 24-core patches" >> "$CONFIG_FILE"
            ;;
        5)
            echo "Other i7-13xxx Raptor Lake Configuration" >> "$CONFIG_FILE"
            echo "=======================================" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Enable all 65 patches" >> "$CONFIG_FILE"
            echo "Use 16-core configuration" >> "$CONFIG_FILE"
            ;;
        6)
            echo "Other i5-13xxx Raptor Lake Configuration" >> "$CONFIG_FILE"
            echo "=======================================" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Enable all 65 patches" >> "$CONFIG_FILE"
            echo "Use 14-core configuration" >> "$CONFIG_FILE"
            ;;
        7)
            echo "Custom Raptor Lake Configuration" >> "$CONFIG_FILE"
            echo "=================================" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Start with all 65 patches enabled" >> "$CONFIG_FILE"
            echo "" >> "$CONFIG_FILE"
            echo "Adjust based on:" >> "$CONFIG_FILE"
            echo "1. Core count (Patches 35-39, 56-58)" >> "$CONFIG_FILE"
            echo "2. CPU topology (Patches 7, 59-60)" >> "$CONFIG_FILE"
            echo "3. Power limits (Patches 61-63)" >> "$CONFIG_FILE"
            echo "4. Performance (Patches 12-13, 28-33)" >> "$CONFIG_FILE"
            ;;
    esac
    
    echo "" >> "$CONFIG_FILE"
    echo "## INSTALLATION NOTES" >> "$CONFIG_FILE"
    echo "1. Enable all 65 patches for Raptor Lake" >> "$CONFIG_FILE"
    echo "2. Test on USB installer first" >> "$CONFIG_FILE"
    echo "3. Monitor thermals - Raptor Lake runs hot" >> "$CONFIG_FILE"
    echo "4. Adjust power limits in BIOS if needed" >> "$CONFIG_FILE"
    echo "5. Keep original files for recovery" >> "$CONFIG_FILE"
    
    echo "✅ Configuration file created: $CONFIG_FILE"
    echo "Contains Raptor Lake CPU-specific recommendations"
    echo ""
}

# NEW: Export patches to XML format (like original input)
export_patches_xml() {
    echo "=========================================="
    echo "   EXPORT PATCHES TO XML FORMAT"
    echo "   Author: N.Mano"
    echo "   Matching original XML structure"
    echo "=========================================="
    echo ""
    
    XML_FILE="raptor_lake_patches_$(date +%Y%m%d_%H%M%S).plist"
    echo "Creating XML file: $XML_FILE"
    echo ""
    
    {
        echo '<?xml version="1.0" encoding="UTF-8"?>'
        echo '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">'
        echo '<plist version="1.0">'
        echo '<dict>'
        echo '	<key>Kernel</key>'
        echo '	<dict>'
        echo '		<key>Patch</key>'
        echo '		<array>'
        
        for i in $(seq 0 $(($TOTAL_PATCHES-1))); do
            echo '			<dict>'
            echo "				<key>Arch</key>"
            echo "				<string>${PATCH_ARCH[$i]}</string>"
            
            if [ -n "${PATCH_BASE[$i]}" ]; then
                echo "				<key>Base</key>"
                echo "				<string>${PATCH_BASE[$i]}</string>"
            else
                echo "				<key>Base</key>"
                echo "				<string></string>"
            fi
            
            echo "				<key>Comment</key>"
            echo "				<string>${PATCH_COMMENTS[$i]}</string>"
            
            echo "				<key>Count</key>"
            echo "				<integer>${PATCH_COUNT[$i]}</integer>"
            
            echo "				<key>Enabled</key>"
            echo "				<true/>"
            
            echo "				<key>Find</key>"
            echo "				<data>"
            echo "${PATCH_FIND_DATA[$i]}"
            echo "				</data>"
            
            echo "				<key>Identifier</key>"
            echo "				<string>${PATCH_IDENTIFIER[$i]}</string>"
            
            echo "				<key>Limit</key>"
            echo "				<integer>0</integer>"
            
            echo "				<key>Mask</key>"
            echo "				<data>"
            echo "				</data>"
            
            echo "				<key>MaxKernel</key>"
            echo "				<string>${PATCH_MAX_KERNEL[$i]}</string>"
            
            echo "				<key>MinKernel</key>"
            echo "				<string>${PATCH_MIN_KERNEL[$i]}</string>"
            
            echo "				<key>Replace</key>"
            echo "				<data>"
            echo "${PATCH_REPLACE_DATA[$i]}"
            echo "				</data>"
            
            echo "				<key>ReplaceMask</key>"
            echo "				<data>"
            echo "				</data>"
            
            echo "				<key>Skip</key>"
            echo "				<integer>0</integer>"
            
            echo '			</dict>'
        done
        
        echo '		</array>'
        echo '	</dict>'
        echo '</dict>'
        echo '</plist>'
    } > "$XML_FILE"
    
    echo "✅ XML file created: $XML_FILE"
    echo "Contains all 65 patches in proper XML/plist format"
    echo "Compatible with OpenCore config.plist"
    echo ""
    
    # Show file size
    FILESIZE=$(wc -c < "$XML_FILE")
    echo "File size: $((FILESIZE/1024)) KB"
    echo ""
}

# NEW: Validate patch consistency
validate_patches() {
    echo "=========================================="
    echo "   VALIDATE PATCH CONSISTENCY"
    echo "   Author: N.Mano"
    echo "   Checking 65 patches"
    echo "=========================================="
    echo ""
    
    echo "Validating all $TOTAL_PATCHES patches..."
    echo ""
    
    ERROR_COUNT=0
    WARNING_COUNT=0
    
    for i in $(seq 0 $(($TOTAL_PATCHES-1))); do
        PATCH_NUM=$((i+1))
        
        # Check if Find and Replace data exists
        if [ -z "${PATCH_FIND_DATA[$i]}" ]; then
            echo "❌ ERROR Patch $PATCH_NUM: Find data is empty"
            ERROR_COUNT=$((ERROR_COUNT+1))
        fi
        
        if [ -z "${PATCH_REPLACE_DATA[$i]}" ]; then
            echo "❌ ERROR Patch $PATCH_NUM: Replace data is empty"
            ERROR_COUNT=$((ERROR_COUNT+1))
        fi
        
        # Check if Find and Replace are same length (when decoded)
        FIND_LEN=$(echo "${PATCH_FIND_DATA[$i]}" | base64 -d | wc -c)
        REPLACE_LEN=$(echo "${PATCH_REPLACE_DATA[$i]}" | base64 -d | wc -c)
        
        if [ $FIND_LEN -ne $REPLACE_LEN ]; then
            echo "⚠️  WARNING Patch $PATCH_NUM: Find ($FIND_LEN bytes) and Replace ($REPLACE_LEN bytes) lengths differ"
            WARNING_COUNT=$((WARNING_COUNT+1))
        fi
        
        # Check for essential fields
        if [ -z "${PATCH_COMMENTS[$i]}" ]; then
            echo "⚠️  WARNING Patch $PATCH_NUM: Comment is empty"
            WARNING_COUNT=$((WARNING_COUNT+1))
        fi
        
        if [ -z "${PATCH_IDENTIFIER[$i]}" ]; then
            echo "❌ ERROR Patch $PATCH_NUM: Identifier is empty"
            ERROR_COUNT=$((ERROR_COUNT+1))
        fi
    done
    
    echo ""
    echo "=== VALIDATION RESULTS ==="
    echo "Total Patches: $TOTAL_PATCHES"
    echo "Errors: $ERROR_COUNT"
    echo "Warnings: $WARNING_COUNT"
    echo ""
    
    if [ $ERROR_COUNT -eq 0 ] && [ $WARNING_COUNT -eq 0 ]; then
        echo "✅ All patches are valid and consistent!"
    elif [ $ERROR_COUNT -eq 0 ]; then
        echo "✅ No critical errors, $WARNING_COUNT warnings to review"
    else
        echo "❌ Found $ERROR_COUNT errors that need fixing"
    fi
    
    echo ""
    echo "=== PATCH STATISTICS ==="
    echo "Kernel patches: $(grep -c "kernel" <<< "${PATCH_IDENTIFIER[@]}")"
    echo "AppleIntelCPUPowerManagement patches: $(grep -c "AppleIntelCPUPowerManagement" <<< "${PATCH_IDENTIFIER[@]}")"
    echo "AppleACPIPlatform patches: $(grep -c "AppleACPIPlatform" <<< "${PATCH_IDENTIFIER[@]}")"
    echo "AppleRTC patches: $(grep -c "AppleRTC" <<< "${PATCH_IDENTIFIER[@]}")"
    echo ""
}

# Main loop
while true; do
    show_menu
    echo ""
    echo "=========================================="
    echo "Raptor Lake Kernel Patch Utilities - v2.0"
    echo "Total Patches: $TOTAL_PATCHES"
    echo "Author: N.Mano"
    echo "CPU Support: Raptor Lake (13th Gen) - i9-13900K optimized"
    echo "=========================================="
    echo ""
    read -p "Press Enter to continue or 'q' to quit: " -n1 input
    if [[ $input == "q" ]]; then
        echo ""
        echo "Goodbye! - N.Mano"
        exit 0
    fi
    echo ""
done