#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Alert slider
PRODUCT_PACKAGES += \
    KeyHandler

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/oscaro/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_ODM)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/oscaro/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/oscaro/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/oscaro/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio/oscarr/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_ODM)/oscarr/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/oscarr/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/oscarr/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/oscarr/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/oscarr/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/oscarr/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_ODM)/oscarr/etc/sound_trigger_platform_info.xml \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/oscaro,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/oscarr,$(TARGET_COPY_OUT_VENDOR)/oscarr/etc/audio/sku_holi)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Display
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.brightness.low.gamma=true

# Init
PRODUCT_PACKAGES += \
    init.oplus.overlay.rc

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc-service.nxp \
    android.hardware.secure_element@1.2.vendor \
    com.android.nfc_extras \
    Tag


# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display_id_4630946253560767361.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946253560767361.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.ese.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.ese.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.ese.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.ese.xml \
    frameworks/native/data/etc/android.hardware.se.omapi.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.se.omapi.uicc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-derp

PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OscaroSettingsProviderResTarget \
    OscarrSettingsProviderResTarget \
    OPlusSystemUIResTarget \
    OscarrPowerProfileOverlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm6375-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/oscar/oscar-vendor.mk)
