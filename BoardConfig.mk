# Copyright (C) 2012 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/lge/p760/BoardConfigVendor.mk

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Cpu
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

TARGET_BOARD_PLATFORM := omap4
TARGET_BOOTLOADER_BOARD_NAME := p760

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
#BOARD_KERNEL_CMDLINE :=

# Define kernel config for inline building
#TARGET_KERNEL_CONFIG := p760_defconfig
#TARGET_KERNEL_SOURCE := kernel/lge/p760
TARGET_PREBUILT_KERNEL := device/lge/p760/prebuilt/kernel

# Storage
BOARD_VOLD_MAX_PARTITIONS    := 17
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/lge/p760/config/egl.cfg

# OMAP
OMAP_ENHANCEMENT := true
ifdef OMAP_ENHANCEMENT
  COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif

# Usb
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2457862144
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_HAS_LARGE_FILESYSTEM := true

# Wifi related defines
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b2
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/data/misc/wifi/fw_path"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_NAME     := "bcmdhd"
WIFI_BAND                   := 802_11_ABG
BOARD_LEGACY_NL80211_STA_EVENTS := true
<<<<<<< HEAD
=======

# Gps
BOARD_HAVE_GPS := true
>>>>>>> Made some updates

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_LIB_DUMPSTATE := libdumpstate.p760

BOARD_MOBILEDATA_INTERFACE_NAME := "rmnet0"

BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/p760/vibrator.c

TARGET_CUSTOM_RELEASETOOL := device/lge/p760/releasetools/squisher
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/lge/p760/releasetools/p760_ota_from_target_files

# Default.prop
ADDITIONAL_DEFAULT_PROPERTIES += \
                             ro.secure=0 \
                             EXTERNAL_STORAGE_MOUNT=/mnt/sdcard \
                             EXTERNAL_ADD_STORAGE_MOUNT=/mnt/sdcard/external_sd \

# Recovery
BOARD_RECOVERY_ALWAYS_WIPES := true
TARGET_RECOVERY_INITRC := device/lge/p760/recovery/init.rc
BOARD_RECOVERY_IGNORE_BOOTABLES := true
BOARD_UMS_LUNFILE := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_HDPI_RECOVERY := true
BOARD_USE_CUSTOM_FONT := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Media / Radio
BUILD_FM_RADIO := true
BUILD_TI_FM_APPS := true
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#twrp
DEVICE_RESOLUTION := 540x960
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_ALWAYS_RMRF := true
TW_NEVER_UNMOUNT_SYSTEM := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/mnt/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/mnt/sdcard/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
