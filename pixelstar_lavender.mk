#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelStar stuff
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

# PixelStar Flags
USE_PIXEL_CHARGER := true
PRODUCT_NO_CAMERA := true
TARGET_INCLUDE_CAMERA_GO := true
TARGET_USES_BLUR_RECENT := false
TARGET_SUPPORTS_GOOGLE_BATTERY := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CLEAR_CALLING := true
TARGET_SUPPORTS_PREBUILT_UPDATABLE_APEX := false

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := pixelstar_lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 7

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.5.3.0.QFGCNXM release-keys"

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.5.3.0.QFGCNXM:user/release-keys
