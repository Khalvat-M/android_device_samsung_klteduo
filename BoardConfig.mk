# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2020 The LineageOS Project
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

# inherit from common klte
include device/samsung/klteduos-common/BoardConfig.mk

TARGET_OTA_ASSERT_DEVICE := kltexx,klte,klteduos

KLTEDUOS_PATH := device/samsung/klteduos

BUILD_FINGERPRINT := samsung/klteduosxx/klte:6.0.1/MMB29M/G900FDXXS1CQD2:user/release-keys

# Kernel
TARGET_KERNEL_CONFIG := lineage_klteduos_defconfig

# Fingerprint
include $(COMMON_PATH)/fingerprint/board.mk

# Init
TARGET_INIT_VENDOR_LIB := //$(KLTEDUOS_PATH):libinit_klteduos
TARGET_RECOVERY_DEVICE_MODULES := libinit_klteduos

# NFC
include $(COMMON_PATH)/nfc/pn547/board.mk

# inherit from the proprietary version
-include vendor/samsung/klteduos/BoardConfigVendor.mk
