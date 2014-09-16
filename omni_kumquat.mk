#
# Copyright (C) 2014 The OmniROM Project
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

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit more device specific configurations
$(call inherit-product, device/sony/kumquat/full_kumquat.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_kumquat
PRODUCT_DEVICE := kumquat
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := Xperia U

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=ST25i_1262-1172 \
    PRIVATE_BUILD_DESC="ST25i-user 4.0.4 6.1.1.B.1.100 m7t3zw test-keys" \
    BUILD_FINGERPRINT="SEMC/ST25i_1262-1172/ST25i:4.0.4/6.1.1.B.1.100/m7t3zw:user/release-keys"