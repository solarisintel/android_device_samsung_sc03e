# Release name
PRODUCT_RELEASE_NAME := sc03e

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/samsung/sc03e/full_sc03e.mk)

# Inherit some common LINEAGE stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sc03e
PRODUCT_NAME := lineage_sc03e
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-03E
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SC-03E TARGET_DEVICE=m3 BUILD_FINGERPRINT="samsung/SC-03E/SC-03E:4.1.1/JRO03C/SC03EOMAMB1:user/release-keys" PRIVATE_BUILD_DESC="m3dcm-user 4.1.1 JRO03C SC03EOMAMB1 release-keys"
