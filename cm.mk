# Inherit device configuration for mojo.
$(call inherit-product, device/madcatz/mojo/full_mojo.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=thor \
    TARGET_DEVICE=roth \
    BUILD_FINGERPRINT="nvidia/thor/roth:4.4.2/KOT49H/eng.unjust.20150214.233911:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="thor-userdebug 4.4.2 KOT49H eng.unjust.20150214.233911 test-keys"

PRODUCT_NAME := cm_thor
PRODUCT_DEVICE := roth
