#
# Copyright (C) 2024 The Project Everest
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from oscar device
$(call inherit-product, device/oneplus/oscar/device.mk)

# Inherit some common everestfest stuff.
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Everest Flags 
EVEREST_MAINTAINER := phhgsi
TARGET_SUPPORTS_BLUR := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false
EVEREST_BUILD_TYPE := OFFICIAL
WITH_GAPPS := true

# Device Specifications 
PRODUCT_NAME := everest_oscar
PRODUCT_DEVICE := oscar
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2381

PRODUCT_SYSTEM_NAME := OP535DL1
PRODUCT_SYSTEM_DEVICE := OP535DL1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OP535DL1-user 14 RKQ1.211119.001 S.1508b2f-2fc90-2fc98 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2381/OP535DL1:14/RKQ1.211119.001/S.1508b2f-2fc90-2fc98:user/release-keys
