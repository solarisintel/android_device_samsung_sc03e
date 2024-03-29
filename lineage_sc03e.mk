# Release name
PRODUCT_RELEASE_NAME := sc03e

# Inherit device configuration
$(call inherit-product, device/samsung/smdk4412-common/common.mk)
$(call inherit-product, device/samsung/sc03e/sc03e.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

TARGET_USE_OLD_SOUND_PICKER := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sc03e
PRODUCT_NAME := lineage_sc03e
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-03E
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=m3xx TARGET_DEVICE=m3
PRIVATE_BUILD_DESC="m3dcm-user 4.1.1 JRO03C SC03EOMAMB1 release-keys"
BUILD_FINGERPRINT=samsung/SC-03E/SC-03E:4.1.1/JRO03C/SC03EOMAMB1:user/release-keys

