#
# Copyright (C) 2014 The Android Open Source Project
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

DEVICE_PATH := device/amlogic/ampere

ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true
ENABLE_CPUSETS := true

# Platform
BOARD_VENDOR := amlogic
TARGET_SOC := s905x
TARGET_BOARD_HARDWARE := amlogic
TARGET_BOARD_PLATFORM := ampere
TARGET_BOOTLOADER_BOARD_NAME := ampere
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true


BOARD_KERNEL_CMDLINE := androidboot.dynamic_partitions=true androidboot.dtbo_idx=0 androidboot.boot_devices=d0074000.emmc buildvariant=user
BOARD_KERNEL_BASE := 0x01078000
BOARD_PAGE_SIZE := 2048
BOARD_HASH_TYPE := sha1
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0xfff88000
#BOARD_SECOND_OFFSET := 0xffe88000
#BOARD_TAGS_OFFSET := 0xfef88100
#BOARD_HEADER_VERSION := 2
BOARD_RECOVERY_DTBO_SIZE := 438
BOARD_RECOVERY_DTBO_OFFSET := 20432896
BOARD_HEADER_SIZE := 1660
BOARD_DTB_SIZE := 124928
BOARD_DTB_OFFSET := 0x00e88000

BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
#BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := amlogic_dynamic_partitions
BOARD_AMLOGIC_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_AMLOGIC_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata
BOARD_SUPPRESS_SECURE_ERASE := true

# Android Verified Boot
BOARD_AVB_ENABLE := false

# Debug
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TWRP_EVENT_LOGGING := false

# Crypto
PLATFORM_SECURITY_PATCH := 2024-12-05
VENDOR_SECURITY_PATCH := 2024-12-05
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_RAMDISK_USE_LZ4 := true

# TWRP specific build flags
RECOVERY_VARIANT := twrp
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_THEME := landscape_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_NO_BATT_PERCENT := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_NO_REBOOT_BOOTLOADER := true
# TW_INCLUDE_FB2PNG := true
TW_SKIP_COMPATIBILITY_CHECK := true
TARGET_USES_MKE2FS := true
TW_NO_LEGACY_PROPS := true
TW_DEFAULT_LANGUAGE := id-ID
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TARGET_USES_MKE2FS := true
TW_DEVICE_VERSION := $(shell date '+%Y%m%d') | FTS™

# Platform version
PLATFORM_VERSION := 16.1.0


