# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560

## Specify phone tech before including full_phone
$(call inherit-product, vendor/broken/config/gsm.mk)

# Inherit some common broken stuff.
$(call inherit-product, vendor/broken/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-broken

## Device identifier. This must come after all inclusions
PRODUCT_NAME := broken_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.1.1/LYZ28E/1914015:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.1.1 LYZ28E 1914015 release-keys"
