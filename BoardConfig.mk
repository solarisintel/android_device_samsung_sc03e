#
# Copyright (C) 2013 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

-include device/samsung/smdk4412-common/BoardCommonConfig.mk
-include device/samsung/smdk4412-qcom-common/BoardCommonConfig.mk

LOCAL_PATH := device/samsung/sc03e

# Wifi
WIFI_DRIVER_MODULE_PATH :=

# Bionic
MALLOC_SVELTE := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
LIBART_IMG_BASE := 0x30000000

# Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412dcm-3.4.67
TARGET_KERNEL_CONFIG := lineageos_sc03e_defconfig

# Kernel(overwrite)
BOARD_KERNEL_CMDLINE := console=null consoleblank=0 androidboot.hardware=smdk4x12 androidboot.selinux=permissive

# Camera
#BOARD_GLOBAL_CFLAGS   += -DCAMERA_WITH_CITYID_PARAM
#TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Cache
BOARD_CACHEIMAGE_PARTITION_SIZE :=104857600
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/sc03e/rootdir/fstab.smdk4x12
TARGET_RECOVERY_DENSITY := mdpi
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := 2

# PowerHAL
#TARGET_POWERHAL_VARIANT := pegasusq

# assert
TARGET_OTA_ASSERT_DEVICE := m3,m3xx,sc03e,SC-03E,i9305,GT-I9305

# Linker
BOARD_NO_CHECK_PIE_BINARY := true

## Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/sc03e/selinux

WITH_SU := true

# Shims
TARGET_LD_SHIM_LIBS := \
   /system/lib/libsec-ril.so|libshim_atomic.so \
   /system/vendor/lib/libril.so|libsamsung_symbols.so

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_MODEM_TYPE := mdm9x35
# old description and new description
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
TARGET_DISABLE_ASHMEM_TRACKING := true

# inherit from the proprietary version
-include vendor/samsung/sc03e/BoardConfigVendor.mk

# Validus standard , AospExtended optinal
TARGET_USES_LEGACY_ADB_INTERFACE := true
