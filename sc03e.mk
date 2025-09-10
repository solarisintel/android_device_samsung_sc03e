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

LOCAL_PATH := device/samsung/sc03e
COMMON_PATH := device/samsung/smdk4412-common

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:root/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/fstab.smdk4x12:$(TARGET_COPY_OUT_RAMDISK)/fstab.smdk4x12 \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.target.usb.rc:root/init.target.usb.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/tiny_hw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound/sc03e

# Sensors
PRODUCT_PACKAGES += \
    sensors.smdk4x12

# Power
PRODUCT_PACKAGES += \
    power.smdk4x12

# Gps
PRODUCT_PACKAGES += \
    gps.smdk4x12 \
    libgps.utils \
    libloc_core \
    libloc_eng

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    persist.gps.qc_nlp_in_use=0

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:/system/etc/sap.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# Product specific Packages
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap \
    SamsungServiceMode \
    tinyplay

# RIL
PRODUCT_PACKAGES += \
	libsamsung_symbols \
	libsecril-shim

# Proprietary blobs dependency on libstlport
PRODUCT_PACKAGES +=  libstlport

# Camera
PRODUCT_PACKAGES += \
    camera.smdk4x12

# f2fs
PRODUCT_PACKAGES += \
	fibmap.f2fs \
	fsck.f2fs \
	mkfs.f2fs

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=smdk4x12QComRIL \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000

PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,gprs,ppp0,rmnet0,rmnet1

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

$(call inherit-product, vendor/samsung/sc03e/sc03e-vendor.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk

## RIL
PRODUCT_PACKAGES += \
    libshim_ril

# RIL (smdk4412-common)
PRODUCT_PACKAGES += \
    libsecril-shim

# RIL (smdk4412-common)
PRODUCT_PACKAGES += \
    libsecril-shim

PRODUCT_PACKAGES += \
    SamsungDoze