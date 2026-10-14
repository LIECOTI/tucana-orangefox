$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit TWRP/OrangeFox common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Dynamic Partitions (Retrofit)
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# Copy twrp.flags to recovery ramdisk
PRODUCT_COPY_FILES += \
    device/xiaomi/tucana/twrp.flags:recovery/root/system/etc/twrp.flags

PRODUCT_NAME := twrp_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10
PRODUCT_MANUFACTURER := Xiaomi