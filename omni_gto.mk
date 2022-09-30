#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gto device
$(call inherit-product, device/samsung/gto/device.mk)

PRODUCT_DEVICE := gto
PRODUCT_NAME := omni_gto
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T295
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gtoxx-user 11 RP1A.200720.012 T295XXU4CUK4 release-keys"

BUILD_FINGERPRINT := samsung/gtoxx/gto:11/RP1A.200720.012/T295XXU4CUK4:user/release-keys
