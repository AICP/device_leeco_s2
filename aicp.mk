# Inherit device configuration
$(call inherit-product, device/leeco/s2/full_s2.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Hemant Sharma (hemantbeast)"

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

-include vendor/aicp/configs/bootanimation.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s2
PRODUCT_NAME := aicp_s2
PRODUCT_BRAND := LeEco
PRODUCT_MANUFACTURER := LeMobile

PRODUCT_GMS_CLIENTID_BASE := android-leeco

TARGET_VENDOR_PRODUCT_NAME := Le2_CN
TARGET_VENDOR_DEVICE_NAME := le_s2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=le_s2 PRODUCT_NAME=Le2_CN

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LeEco/Le2_CN/le_s2:6.0.1/IEXCNFN5902012151S/106:user/release-keys \
    PRIVATE_BUILD_DESC="s2-user 6.0.1 IEXCNFN5902012151S 106 release-keys"

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

# Release name
PRODUCT_RELEASE_NAME := s2
