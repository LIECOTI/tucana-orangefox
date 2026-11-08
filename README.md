# OrangeFox Recovery Device Tree for Xiaomi Mi Note 10 / CC9 Pro (tucana)

Device tree for building OrangeFox Recovery (`fox\_12.1`) for Xiaomi Mi Note 10 / Mi Note 10 Pro (`tucana`) with **Retrofit Dynamic Partitions** support.

## Features \& Working Components

* **Decryption:** FBEv2 + metadata encryption + wrapped keys (`wrappedkey\_v0`) for Android 16 / LineageOS 23.2
* **Dynamic Partitions:** Full Retrofit Dynamic Partitions (`system`, `system\_ext`, `product`, `vendor`) \& `lptools` support
* **Storage:** Internal storage, USB-OTG (FAT32, exFAT, NTFS via `ntfs-3g`), and MTP
* **UI \& Hardware:** Custom bottom screen inset for curved display edges (`OF\_SCREEN\_BOTTOM\_INSET=60`), notch padding, brightness control, haptics, and Qualcomm RTC time fix

## Flashing

```bash
fastboot flash recovery OrangeFox-tucana.img

Credits \& License
Maintainer: LIECOTI(LIECO)
Contributors: Gursu-Bilisim (FBEv2 decryption configuration and UI/recovery patches), 
TeamWin (qcom\_decrypt), 
LineageOS (sm6150 kernel, SanyaPilot)

License: Apache-2.0 (device tree configuration) / GPL-3.0-or-later (recovery-patches/)\[cite: 8]

