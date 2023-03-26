#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from jeice device
$(call inherit-product, device/bq/jeice/device.mk)

PRODUCT_DEVICE := jeice
PRODUCT_NAME := omni_jeice
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris C
PRODUCT_MANUFACTURER := bq

PRODUCT_GMS_CLIENTID_BASE := android-bq-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jeice_bq-user 8.1.0 OPM1.171019.026 2419 release-keys"

BUILD_FINGERPRINT := bq/jeice_bq/jeice:8.1.0/OPM1.171019.026/2419:user/release-keys
