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

# Proprietary files
$(call inherit-product, vendor/samsung/a7lte/a7lte-vendor.mk)

VENDOR_PATH := device/samsung/a7lte

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(VENDOR_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/audio/acdb/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(VENDOR_PATH)/audio/acdb/General_cal.acdb:system/etc/General_cal.acdb \
    $(VENDOR_PATH)/audio/acdb/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(VENDOR_PATH)/audio/acdb/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(VENDOR_PATH)/audio/acdb/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(VENDOR_PATH)/audio/acdb/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(VENDOR_PATH)/audio/acdb/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    $(VENDOR_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(VENDOR_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8916 \
    libmm-qcamera

# Media
PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.crda.sh \
    init.qcom.bt.sh \
    init.qcom.coex.sh \
    init.qcom.fm.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf \
    wcnss_service

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/configs/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(VENDOR_PATH)/configs/hostapd.conf:system/etc/hostapd/hostapd_default.conf \
    $(VENDOR_PATH)/configs/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(VENDOR_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(VENDOR_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(VENDOR_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(VENDOR_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Inherit from msm8939-common
$(call inherit-product, device/samsung/msm8939-common/msm8939.mk)
