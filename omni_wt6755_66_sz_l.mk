#
# Copyright 2016 The Android Open Source Project
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

$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

LOCAL_PATH := device/yu/wt6755_66_sz_l

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/fstab.mt6755:root/fstab.mt6577 \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:root/etc/twrp.fstab

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wt6755_66_sz_l
PRODUCT_NAME := omni_wt6755_66_sz_l
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5530
PRODUCT_MANUFACTURER := YU

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=YUNICORN \
    ro.product.device=YUNICORN
