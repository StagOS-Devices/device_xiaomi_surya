#
# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2020 The ColtOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common ColtOS stuff.
$(call inherit-product, vendor/colt/config/common_full_phone.mk)
  TARGET_GAPPS_ARCH := arm64
  COLT_BUILD_TYPE := UNOFFICIAL
  COLT_BUILD_MAINTAINER := 🔥MEZAQUE_MYYDATA🔥
  TARGET_BOOT_ANIMATION_RES := 1080x1920
  IS_PHONE := true

# Device identifier
PRODUCT_NAME := colt_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/surya_global/surya:11/RKQ1.200826.002/V12.5.1.0.RJGMIXM:user/release-keys
