# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# $(error STEP 2 :: $(SRC_TARGET_DIR))

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# $(error STEP 5 :: $(PRODUCT_PROPERTY_OVERRIDES))

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/armani/device.mk)

# $(error STEP 7 :: $(PRODUCT_AAPT_PREBUILT_DPI))

$(call inherit-product-if-exists, vendor/xiaomi/armani/armani-vendor.mk)

# $(error STEP 8 :: $(PRODUCT_PACKAGES))

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# $(warning STEP 10 :: $(PRODUCT_BRAND))

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := armani
PRODUCT_NAME := full_armani
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM 1S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=armani
