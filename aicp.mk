# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Xiaomi MI6 device
$(call inherit-product, device/xiaomi/sagit/device.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)


PRODUCT_NAME := aicp_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Use Magisk
#DEFAULT_ROOT_METHOD := magisk

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/sagit/sagit:7.1.1/NMF26X/V9.0.1.0.NCAMIEI:user/release-keys" \
    PRIVATE_BUILD_DESC="sagit-user 7.1.1 NMF26X V9.0.1.0.NCAMIEI release-keys"

