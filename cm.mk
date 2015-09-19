# Inherit device configuration for roth.
$(call inherit-product, device/nvidia/roth/full_roth.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="nvidia/thor/roth:5.1/LMY47N/01.00.32208_585.9399:user/release-keys" \
    PRIVATE_BUILD_DESC="thor_gms-user 5.1 LMY47N 01.00.32208_585.9399 release-keys"

PRODUCT_NAME := cm_roth
PRODUCT_DEVICE := roth
