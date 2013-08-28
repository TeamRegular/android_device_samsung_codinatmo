#
# Copyright (C) 2013 The CyanogenMod Project
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

# Inherit the proprietary vendors blobs for Samsung Codinatmo.
$(call inherit-product, vendor/samsung/codinatmo/codinatmo-vendor.mk)


DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit common configuration for Samsung u8500 devices
$(call inherit-product, device/samsung/u8500-common/device_u8500-common.mk)


# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.samsungcodina:root/fstab.samsungcodina \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.rc:root/init.samsungcodina.rc \
    $(LOCAL_PATH)/rootdir/init.samsungcodina.usb.rc:root/init.samsungcodina.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.samsungcodina.rc:root/ueventd.samsungcodina.rc

# STE
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/cspsa.conf:system/etc/cspsa.conf

# RIL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/AT/manuf_id.cfg:system/etc/AT/manuf_id.cfg \
    $(LOCAL_PATH)/configs/etc/AT/model_id.cfg:system/etc/AT/model_id.cfg \
    $(LOCAL_PATH)/configs/etc/AT/system_id.cfg:system/etc/AT/system_id.cfg

# TouchScreen & Inputs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/usr/keylayout/codina-kp.kl:system/usr/keylayout/codina-kp.kl

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    ste.cam.ext.cfg.path.secondary=/system/usr/share/camera/config_file/aptina_mt9v113.dat

# Vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/vold.fstab:system/etc/vold.fstab
