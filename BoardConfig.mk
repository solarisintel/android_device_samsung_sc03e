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
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib/libsec-ril.so|libsamsung_symbols.so

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/sc03e/bluetooth

# Kernel
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

# Properties
TARGET_SYSTEM_PROP += device/samsung/sc03e/system.prop

## modem reconigize for sc03e
BOARD_MODEM_TYPE := mdm9x35
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0,gprs,ppp0,rmnet0,rmnet1"

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/sc03e/releasetools

# GPS
TARGET_NO_RPC := true

# Radio
TARGET_LD_SHIM_LIBS += \
   /system/vendor/lib/libsec-ril.so|libshim_ril.so




