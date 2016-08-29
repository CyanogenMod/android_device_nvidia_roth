#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Roth screen sizes: 640dp/360dp  960dp/540dp
PRODUCT_AAPT_CONFIG := mdpi hdpi xhdpi sw320dp sw340dp sw360dp sw380dp sw540dp small normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280

PRODUCT_CHARACTERISTICS := tablet shield
TARGET_TEGRA_VERSION := t114
TARGET_TEGRA_TOUCH := raydium
TARGET_TEGRA_DISABLE_OVERLAY := true

$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/nvidia/roth/roth-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    device/nvidia/roth/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.roth \
    init.roth.rc \
    init.roth_common.rc \
    init.recovery.roth.rc \
    power.roth.rc \
    ueventd.roth.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audioConfig_qvoice_icera_pc400.xml:system/etc/audioConfig_qvoice_icera_pc400.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/nvaudio_conf.xml:system/etc/nvaudio_conf.xml

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/comms/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/comms/gpsconfig.xml:system/etc/gps/gpsconfig.xml
    $(LOCAL_PATH)/comms/gps.conf:system/etc/gps.conf

# Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/Vendor_0955_Product_7202.kcm:system/usr/keychars/Vendor_0955_Product_7202.kcm

# Lights
PRODUCT_PACKAGES += \
    lights.roth

# Media config
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/audio/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/audio/media_profiles.xml:system/etc/media_profiles.xml

# NVIDIA. The last one is needed here because roth doesn't have a compass.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.nvidia.feature.xml:system/etc/permissions/com.nvidia.feature.xml \
    $(LOCAL_PATH)/permissions/com.nvidia.nvsi.xml:system/etc/permissions/com.nvidia.nvsi.xml \
    $(LOCAL_PATH)/permissions/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_PACKAGES += power.tegra

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/comms/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Wireless Controller
#$(call inherit-product-if-exists, vendor/nvidia/shield_common/blake-blobs.mk)

# Console Mode
$(call inherit-product-if-exists, vendor/nvidia/shield_common/consolemode-blobs.mk)

$(call inherit-product, device/nvidia/shield-common/shield.mk)
