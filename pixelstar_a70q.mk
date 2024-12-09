#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a70q device
$(call inherit-product, device/samsung/a70q/device.mk)

# Inherit some common pixelstar stuff.
$(call inherit-product, vendor/pixelstar/config/common_full_phone.mk)

# PixelStar flags
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
PIXELSTAR_BUILD_TYPE := unofficial
USE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_HAS_UDFPS := true
PRODUCT_NO_CAMERA := false
ADD_CUSTOM_APPS := true

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelstar_a70q
PRODUCT_DEVICE := a70q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A705
PRODUCT_MANUFACTURER := samsung

BUILD_FINGERPRINT := "samsung/a70qxx/a70q:11/RP1A.200720.012/A705FNXXU5DWB4:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a70qxx-user 11 RP1A.200720.012 A705FNXXU5DWB4 release-keys" \
    PRODUCT_NAME="a70q" \
    TARGET_DEVICE="a70q"

PRODUCT_GMS_CLIENTID_BASE := android-samsung
