# Inherit device configuration for roth.
$(call inherit-product, device/nvidia/roth/full_roth.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="nvidia/thor/roth:4.4.2/KOT49H/01.00.19770_451.2704:user/release-keys" \
    PRIVATE_BUILD_DESC="thor-user 4.4.2 KOT49H 01.00.19770_451.2704 release-keys"

PRODUCT_NAME := cm_roth
