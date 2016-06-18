# Release name
PRODUCT_RELEASE_NAME := YU5530

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/yu/YU5530/device_YU5530.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := YU5530
PRODUCT_NAME := cm_YU5530
PRODUCT_BRAND := yu
PRODUCT_MODEL := YU5530
PRODUCT_MANUFACTURER := yu
