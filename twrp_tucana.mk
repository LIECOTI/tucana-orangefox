# Наследуем базовые настройки Android
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Паспортные данные телефона
PRODUCT_NAME := twrp_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10
PRODUCT_MANUFACTURER := Xiaomi
