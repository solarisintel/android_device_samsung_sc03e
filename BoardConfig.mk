#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include device/samsung/smdk4412-common/BoardCommonConfig.mk

# Wifi
WIFI_DRIVER_MODULE_PATH :=

# Bionic
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LIBART_IMG_BASE := 0x30000000

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/sc03e/bluetooth

# Kernel
# ChronoMonochrome-lineage-16.0-i9100-rebase modified 
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412dcm
TARGET_KERNEL_CONFIG := lineageos_sc03e_defconfig

TARGET_SPECIFIC_HEADER_PATH += device/samsung/sc03e/include

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE :=104857600
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/sc03e/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# PowerHAL
TARGET_POWERHAL_VARIANT := pegasusq

# assert
TARGET_OTA_ASSERT_DEVICE := m3,sc03e,SC-03E

## Radio (non-used 7.1 style, using with vendor libril.so)
#TARGET_LD_SHIM_LIBS += \
#  /system/vendor/lib/libril.so|libsamsung_symbols.so

## Radio (non-used 8.1 style, issue is airplane mode)
#TARGET_LD_SHIM_LIBS += \
#   /system/lib/libsec-ril.so|libshim_atomic.so

## Radio (9.0 style, using with libsecril-shim.so)
TARGET_LD_SHIM_LIBS += \
   /system/lib/libsec-ril.so|libshim_ril.so

# RIL is moved to smdk4412-common
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING

# Legacy BLOB Support
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/lib/libsec-ril.so=19

TARGET_SPECIFIC_HEADER_PATH += device/samsung/sc03e/include

# GPS
TARGET_NO_RPC := true

## Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/sc03e/selinux

