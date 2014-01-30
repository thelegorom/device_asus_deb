#
# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2013 The LiquidSmooth Project
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

# Boot 
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# device
$(call inherit-product, device/asus/deb/full_deb.mk)

# tablet
$(call inherit-product, vendor/liquid/config/common_tablet.mk)

# telephony
$(call inherit-product, vendor/liquid/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# product
PRODUCT_DEVICE := deb
PRODUCT_BRAND := google
PRODUCT_NAME := liquid_deb
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.deb.$(shell date +%m%d%y).$(shell date +%H%M%S)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=937116 \
    PRODUCT_NAME=razorg \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="razorg-user 4.4.2 KOT49H 937116 release-keys" \
    BUILD_FINGERPRINT="google/razorg/deb:4.4.2/KOT49H/937116:user/release-keys"
