# Device name
export FOX_BUILD_DEVICE="tucana"

# Versioning and Maintainer
export FOX_VARIANT="Retrofit"
export FOX_MAINTAINER_PATCH_VERSION="1"
export OF_MAINTAINER="LIECOTI"

# Hardware specifics
export FOX_AB_DEVICE=0
export FOX_VIRTUAL_AB_DEVICE=0
export OF_PATCH_AVB20=1
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export OF_SCREEN_H=2340
export OF_SCREEN_W=1080

# Additional tools
export FOX_ENABLE_APP_MANAGER=1
export OF_ENABLE_LPTOOLS=1

# Screen notch/cutout configuration
export OF_STATUS_H=85
export OF_STATUS_INDENT_LEFT=64
export OF_STATUS_INDENT_RIGHT=64
export OF_CLOCK_POS=1

# Fix for reboot loop and vanilla build
export FOX_VANILLA_BUILD=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
