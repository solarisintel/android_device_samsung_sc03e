
# Release name
PRODUCT_RELEASE_NAME := sc03e

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/aosp/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sc03e
PRODUCT_NAME := aosp_sc03e
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-03E
PRODUCT_MANUFACTURER := samsung

# Inherit device configuration
$(call inherit-product, device/samsung/smdk4412-common/common.mk)
$(call inherit-product, device/samsung/smdk4412-qcom-common/common.mk)
$(call inherit-product, device/samsung/sc03e/sc03e.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="m3dcm-user 4.1.1 JRO03C SC03EOMAMB1 release-keys"

BUILD_FINGERPRINT := "samsung/SC-03E/SC-03E:4.1.1/JRO03C/SC03EOMAMB1:user/release-keys" 

PRODUCT_BUILD_PROP_OVERRIDES += \
  DEVICE_MAINTAINERS="solarisintel" \
  DEVICE_MAINTAINERS="solarisintel"
