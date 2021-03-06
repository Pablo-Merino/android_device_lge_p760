# Copyright (C) 2012 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/lge/p760/overlay
TARGET_SPECIFIC_HEADER_PATH := device/lge/p760/include

# make fallback to mdpi possible
# e.g. for maintaining crisp assets on 160dpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
	charger \
	charger_res_images

PRODUCT_PACKAGES += \
	libinvensense_mpl

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	libaudioutils

# Audio
PRODUCT_COPY_FILES := \
	device/lge/p760/config/audio_policy.conf:system/etc/audio_policy.conf \

PRODUCT_COPY_FILES := \
	device/lge/p760/init.lgep760board.rc:root/init.lgep760board.rc \
	device/lge/p760/init.p760.usb.rc:root/init.p760.usb.rc \
	device/lge/p760/ueventd.lgep760board.rc:root/ueventd.lgep760board.rc \
	device/lge/p760/prebuilt/init.rmnet:system/bin/init.rmnet \
	device/lge/p760/prebuilt/init.rmnet-down:system/bin/init.rmnet-down \
	device/lge/p760/config/media_profiles.xml:system/etc/media_profiles.xml \
	device/lge/p760/config/gps_brcm_conf.xml:system/etc/gps_brcm_conf.xml \
	device/lge/p760/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \

# hijack/bootstrap

PRODUCT_COPY_FILES += \
       device/lge/p760/bootstrap/hijack:system/bin/hijack

PRODUCT_COPY_FILES += \
       device/lge/p760/bootstrap/2nd-init:system/bootstrap/2nd-init \
       device/lge/p760/bootstrap/getkey:system/bootstrap/getkey \
       device/lge/p760/bootstrap/taskset:system/bootstrap/taskset \
       device/lge/p760/bootstrap/stop:system/bootstrap/stop \
       device/lge/p760/bootstrap/unsecureboot:system/bootstrap/unsecureboot

# 2nd init ramdisks
 	
PRODUCT_COPY_FILES += \
	device/lge/p760/bootstrap/recovery.tar:system/bootstrap/recovery.tar 

# keylayouts and touchscreen
PRODUCT_COPY_FILES += \
	device/lge/p760/config/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
	device/lge/p760/config/touch_dev.idc:system/usr/idc/touch_dev.idc \
        device/lge/p760/config/osp3-input.kl:system/usr/keylayout/osp3-input.kl \
        device/lge/p760/config/osp3-input.idc:system/usr/idc/osp3-input.idc \
	device/lge/p760/config/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
	device/lge/p760/config/twl6030_pwrbutton.kl:system/usr/keylayout/twl6030_pwrbutton.kl

# Keychars
PRODUCT_COPY_FILES += \
	device/lge/p760/config/touch_dev.kcm:system/usr/keychars/touch_dev.kcm \
	device/lge/p760/config/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
	device/lge/p760/config/twl6030_pwrbutton.kcm:system/usr/keychars/twl6030_pwrbutton.kcm

# Kernel Modules
PRODUCT_COPY_FILES += \
	device/lge/p760/prebuilt/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko \

# Ssx modules
PRODUCT_COPY_FILES += \
	device/lge/p760/prebuilt/modules/omaplfb_sgx540_120.ko:system/modules/omaplfb_sgx540_120.ko \
	device/lge/p760/prebuilt/modules/pvrsrvkm_sgx540_120.ko:system/modules/pvrsrvkm_sgx540_120.ko

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Wifi
PRODUCT_COPY_FILES += \
	device/lge/p760/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	wifi.features=p2p \
	wifi.supplicant_scan_interval=45

PRODUCT_PACKAGES += \
	nfc.p760 \
	wifimac

# NFC
PRODUCT_PACKAGES += \
        libnfc \
        libnfc_jni \
        Nfc \
        Tag

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

#--> manual omap4 start
PRODUCT_PACKAGES += \
        libdomx \
        libOMX_Core \
        libOMX.TI.DUCATI1.VIDEO.H264E \
        libOMX.TI.DUCATI1.VIDEO.MPEG4E \
        libOMX.TI.DUCATI1.VIDEO.DECODER \
        libOMX.TI.DUCATI1.VIDEO.DECODER.secure \
        libOMX.TI.DUCATI1.VIDEO.CAMERA \
        libOMX.TI.DUCATI1.MISC.SAMPLE \
        libdrmdecrypt \
        libstagefrighthw \
        libI420colorconvert \
        libtiutils \
        libcamera \
        libion \
        camera.omap4 \
        libomxcameraadapter \
        smc_pa_ctrl \
        tf_daemon \

PRODUCT_VENDOR_KERNEL_HEADERS := hardware/ti/omap4xxx/kernel-headers
# manual omap4 end <--

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# ril
PRODUCT_COPY_FILES += \
	device/lge/p760/config/ipc_channels.config:system/etc/ipc_channels.config

# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
PRODUCT_COPY_FILES += \
	packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# file that declares the MIFARE NFC constant
PRODUCT_COPY_FILES += \
	device/sample/nxp/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# NFC EXTRAS add-on API
PRODUCT_PACKAGES += \
	com.android.nfc_extras
PRODUCT_COPY_FILES += \
	frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/lge/p760/config/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/lge/p760/config/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	hwui.render_dirty_regions=false

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240 

PRODUCT_TAGS += dalvik.gc.type-precise

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/p760/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Vold and Storage
PRODUCT_COPY_FILES += \
	device/lge/p760/vold.fstab:system/etc/vold.fstab

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/nxp/pn544/nxp-pn544-fw-vendor.mk)
$(call inherit-product-if-exists, vendor/ti/proprietary/omap4/ti-omap4-vendor.mk)

$(call inherit-product-if-exists, vendor/lge/p760/p760-vendor.mk)
