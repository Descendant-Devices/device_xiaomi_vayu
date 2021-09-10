#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Descendant stuff.
$(call inherit-product, vendor/descendant/config/common_full_phone.mk)
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_BLUR := true

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

PRODUCT_NAME := descendant_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 11 RKQ1.200826.002 V12.5.2.0.RJUMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:11/RKQ1.200826.002/V12.5.2.0.RJUMIXM:user/release-keys
