#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := a7lte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a7lte/device_a7lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a7lte
PRODUCT_NAME := cm_a7lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := a7lte
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/a7ltexx/a7lte:5.0.2/LRX22G/A700FDXXU1BOE6:user/release-keys 
PRIVATE_BUILD_DESC="a7ltexx-user 5.0.2 LRX22G A700FDXXU1BOE6 release-keys"
