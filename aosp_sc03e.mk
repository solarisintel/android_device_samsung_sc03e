# Release name
PRODUCT_RELEASE_NAME := sc03e

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/smdk4412-common/common.mk)
$(call inherit-product, device/samsung/sc03e/sc03e.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_USE_OLD_SOUND_PICKER := true
TARGET_GAPPS_ARCH := arm
TARGET_MINIMAL_APPS := true
CUSTOM_BUILD_TYPE := UNOFFICIAL

$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sc03e
PRODUCT_NAME := aosp_sc03e
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-03E
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3
PRIVATE_BUILD_DESC="m3dcm-user 4.1.1 JRO03C SC03EOMAMB1 release-keys"
BUILD_FINGERPRINT=samsung/SC-03E/SC-03E:4.1.1/JRO03C/SC03EOMAMB1:user/release-keys
 

