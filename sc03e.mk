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

LOCAL_PATH := device/samsung/sc03e

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:root/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.target.usb.rc:root/init.target.usb.rc \
    $(LOCAL_PATH)/rootdir/init.smdk4x12.rc:root/init.smdk4x12.rc \
    $(LOCAL_PATH)/rootdir/init.smdk4x12.usb.rc:root/init.smdk4x12.usb.rc \
    $(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/rootdir/ueventd.smdk4x12.rc:root/ueventd.smdk4x12.rc \
    $(LOCAL_PATH)/rootdir/ueventd.smdk4x12.rc:recovery/root/ueventd.smdk4x12.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/tiny_hw.xml:system/etc/sound/sc03e

# Sensors
PRODUCT_PACKAGES += \
    sensors.smdk4x12

# Power
#PRODUCT_PACKAGES += \
#    power.smdk4x12

# Product specific Packages
PRODUCT_PACKAGES += \
    SamsungServiceMode \
    tinyplay

# Camera
PRODUCT_PACKAGES += \
    camera.smdk4x12 \
    Snap

# f2fs
PRODUCT_PACKAGES += \
    fibmap.f2fs \
    fsck.f2fs \
    mkfs.f2fs

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml

# Samsung symbols
PRODUCT_PACKAGES += \
    libsamsung_symbols \
    libshim_atomic

# RIL
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap \
    libril \
    rild

# RIL for sc03e 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=smdk4x12QComRIL \
    mobiledata.interfaces=pdp0,gprs,ppp0,rmnet0,rmnet1 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000

# GPS(file, param, conf) are moved to smdk4412-qcom-common
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/configs/gps.conf:/system/etc/gps.conf

# Memtrack
PRODUCT_PACKAGES += \
    memtrack.smdk4x12 \
    android.hardware.memtrack@1.0-impl

# vendor
$(call inherit-product, vendor/samsung/sc03e/sc03e-vendor.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

