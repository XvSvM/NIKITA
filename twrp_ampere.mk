#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery


# Inherit from ampere device
$(call inherit-product, device/amlogic/ampere/device.mk)

PRODUCT_DEVICE := ampere
PRODUCT_NAME := twrp_ampere
PRODUCT_BRAND := Amlogic
PRODUCT_MODEL := ampere
PRODUCT_MANUFACTURER := amlogic

PRODUCT_GMS_CLIENTID_BASE := android-droid-tv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ampere-user 12 STTC.220815.001 20240806 release-keys"

BUILD_FINGERPRINT := Amlogic/ampere/ampere:12/STTC.220815.001/zhongyinghao08061648:user/release-keys
