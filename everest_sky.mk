#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Infinity-X configurations
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

$(call inherit-product, vendor/everest/config/BoardConfigReservedSize.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := everest_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# everest flags
EVEREST_BUILD_TYPE := OFFICIAL

EVEREST_MAINTAINER := Ashwani_&_Dhanush

# Blur
TARGET_SUPPORTS_BLUR := true

# Gapps
WITH_GAPPS := true

# Vanilla
# WITH_GAPPS := false

# Lawnchair in GAPPS build (Default= Pixel Launcher)
TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_INCLUDE_LAWNCHAIR := true

# launcher
# TARGET_INCLUDE_PIXEL_LAUNCHER := false
# TARGET_INCLUDE_LAUNCHER3 := true