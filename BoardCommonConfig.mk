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

LOCAL_PATH := device/samsung/sc03e

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
#COMMON_GLOBAL_CFLAGS += -DCAMERA_WITH_CITYID_PARAM
BOARD_GLOBAL_CFLAGS   += -DCAMERA_WITH_CITYID_PARAM

TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412dcm
TARGET_KERNEL_CONFIG := lineageos_sc03e_defconfig

# Kernel(overwrite)
BOARD_KERNEL_CMDLINE := ttySAC2,115200 consoleblank=0 androidboot.hardware=smdk4x12 androidboot.selinux=permissive

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/sc03e/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_DENSITY := mdpi
BOARD_RECOVERY_SWIPE := true

# F2FS
PRODUCT_PACKAGES += \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs

TARGET_USERIMAGES_USE_F2FS := true

# assert
TARGET_OTA_ASSERT_DEVICE := m3,m3xx,sc03e,SC-03E,i9305,GT-I9305

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/sc03e/selinux

# Linker
BOARD_NO_CHECK_PIE_BINARY := true

# PowerHAL
TARGET_POWERHAL_VARIANT := pegasusq
