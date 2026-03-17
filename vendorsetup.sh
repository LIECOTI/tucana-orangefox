# Имя устройства
export FOX_BUILD_DEVICE="tucana"

# Имя автора и версия (Будет написано OrangeFox R14 Retrofit by LIECOTI)
export FOX_VARIANT="Retrofit"
export FOX_MAINTAINER_PATCH_VERSION="1"
export OF_MAINTAINER="LIECOTI"

# Настройки для Mi Note 10 (один слот)
export FOX_AB_DEVICE=0
export FOX_VIRTUAL_AB_DEVICE=0
export OF_PATCH_AVB20=1

# Настройки для Retrofit MIUI (чтобы рекавери видело разделы)
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"

# Разрешение экрана Mi Note 10
export OF_SCREEN_H=2340
export OF_SCREEN_W=1080

# Дополнительные утилиты
export FOX_ENABLE_APP_MANAGER=1
export OF_ENABLE_LPTOOLS=1

# Принудительно добавляем устройство в меню сборки
add_lunch_combo twrp_tucana-eng
