#
# Copyright (C) 2015 The CyanogenMod Project
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

# This file includes all definitions that apply to ALL xt897c devices, and
# are also specific to xt897c devices
#
# Everything in this directory will become public

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960_jbbl-common/msm8960.mk)

# most of the stuff is shared with xt897 (gsm)
LOCAL_PATH := device/motorola/xt897

# xt897 overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# xt897c specific overlay (cdma)
DEVICE_PACKAGE_OVERLAYS += device/motorola/xt897c/overlay

# sqlite3
PRODUCT_PACKAGES += \
    sqlite3

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.log.aplogd.enable=1

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=1 \
    ro.config.svdo=true \
    ro.config.svlte1x=true \
    ro.cdma.nbpcd=0 \
    ro.cdma.home.operator.isnan=1 \
    ro.telephony.gsm-routes-us-smsc=1 \
    ro.cdma.otaspnumschema=SELC,1,80,99 \
    persist.radio.mode_pref_nv10=1 \
    persist.radio.vrte_logic=2 \
    persist.radio.skip_data_check=1 \
    persist.ril.max.crit.qmi.fails=4 \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
    ro.telephony.default_network=10 \
    ro.mot.ignore_csim_appid=true \
    ro.cdma.subscription=1 \
    DEVICE_PROVISIONED=1 \
    persist.sys.report_gprs_as_edge=1

# Alternate optional key maps
PRODUCT_PACKAGES += \
    AsantiKeypad

$(call inherit-product, device/motorola/qcom-common/idc/idc.mk)
$(call inherit-product, device/motorola/qcom-common/keychars/keychars.mk)
$(call inherit-product, device/motorola/qcom-common/keylayout/keylayout.mk)
$(call inherit-product, device/motorola/qcom-common/modules/nfc/nfc.mk)
$(call inherit-product, vendor/motorola/xt897/xt897-vendor.mk)

