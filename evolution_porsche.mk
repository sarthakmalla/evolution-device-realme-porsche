#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from porsche device
$(call inherit-product, device/realme/porsche/device.mk)

# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/evolution/config/common.mk)

# Evolution-X Extras

EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_MINI_GAPPS := true
TARGET_USES_OPLUS_CAMERA := false
TARGET_CAMERA_NEEDS_CLIENT_INFO_LIB_OPLUS := false
TARGET_NEEDS_OPLUS_VENDOR_TAG := false
EVO_BUILD_TYPE := UNOFFICIAL

PRODUCT_NAME := evolution_porsche
PRODUCT_DEVICE := porsche
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme GT 2

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_SYSTEM_NAME := RE58B2L1
PRODUCT_SYSTEM_DEVICE := RE58B2L1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

