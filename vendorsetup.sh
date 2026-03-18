# Имя устройства
export FOX_BUILD_DEVICE="tucana"

# Имя автора и версия 
export FOX_VARIANT="Retrofit"
export FOX_MAINTAINER_PATCH_VERSION="1"
export OF_MAINTAINER="LIECOTI"

# Настройки для Mi Note 10 
export FOX_AB_DEVICE=0
export FOX_VIRTUAL_AB_DEVICE=0
export OF_PATCH_AVB20=1

# Настройки для Retrofit 
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"

# Разрешение экрана Mi Note 10
export OF_SCREEN_H=2340
export OF_SCREEN_W=1080

# Дополнительные утилиты
export FOX_ENABLE_APP_MANAGER=1
export OF_ENABLE_LPTOOLS=1

# --- ФИКС ВЫРЕЗА ЭКРАНА (Капля) ---
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_CLOCK_POS=1

# --- ФИКС ПЕРЕЗАГРУЗКИ ---
export FOX_VANILLA_BUILD=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
