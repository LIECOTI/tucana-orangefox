# --- ПУТЬ К УСТРОЙСТВУ (ОБЯЗАТЕЛЬНО ДЛЯ СБОРКИ) ---
DEVICE_PATH := device/xiaomi/tucana

# --- АРХИТЕКТУРА ПРОЦЕССОРА (Snapdragon 730G / sm7150) ---
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# --- ПЛАТФОРМА И ЗАГРУЗЧИК ---
TARGET_BOARD_PLATFORM := sm7150
TARGET_BOOTLOADER_BOARD_NAME := sm7150
TARGET_NO_BOOTLOADER := true

# --- НАСТРОЙКИ ЯДРА (Kernel) ---
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/recovery_dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 loop.max_part=7 androidboot.usbcontroller=a600000.dwc3 buildvariant=user
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version 2

# --- РАЗМЕРЫ РАЗДЕЛОВ (Tucana) ---
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728

# --- МАГИЯ RETROFIT DYNAMIC PARTITIONS ---
# Это объединит старые разделы в один большой super-раздел
BOARD_RETROFIT_DYNAMIC_PARTITIONS := true
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor odm

# --- ФИКС ОШИБКИ SYMLINK VENDOR (Указываем, что это реальные папки) ---
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_ODM := odm

BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

# --- ФАЙЛОВЫЕ СИСТЕМЫ ---
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# --- НАСТРОЙКИ ORANGEFOX / TWRP ---
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 1023
TW_DEFAULT_BRIGHTNESS := 400
TW_Y_OFFSET := 80
TW_HAPTICS_TSPDRV := true

# --- FASTBOOTD (Жизненно важно для прошивки портов MIUI) ---
TW_INCLUDE_FASTBOOTD := true
TW_INCLUDE_REPACKTOOLS := true

# --- ШИФРОВАНИЕ (Поддержка расшифровки Android 12 - 15) ---
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_USE_FSCRYPT_POLICY := 2
BOARD_USES_METADATA_PARTITION := true
