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

DEVICE_PATH := device/samsung/a7lte

# Inherit from msm8939-common
-include device/samsung/msm8939-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := msm8939_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8939_sec_a7_eur_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a7lte

# Partition Info
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2587717795
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12369489428
BOARD_CACHEIMAGE_PARTITION_SIZE := 202375168
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_PERSISTIMAGE_PARTITION_SIZE := 4089446

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/a7lte/recovery/recovery_keys.c

# File System
BOARD_HAS_LARGE_FILESYSTEM := true

# TWRP
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := "/sys/devices/virtual/lcd/panel/panel/brightness"
#TW_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom,mdss_mdp/qcom,mdss_fb_primary.139/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_MTP_DEVICE := /dev/usb_mtp_gadget
RECOVERY_SDCARD_ON_DATA := true
