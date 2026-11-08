# OrangeFox / TWRP source changes

The recovery images in this repository's releases are built from OrangeFox Recovery
`fox_12.1` with the changes in `bootable_recovery.diff` applied to `bootable/recovery`.
TWRP and OrangeFox are licensed under the GNU General Public License, version 3 or later,
and so are these changes (see `COPYING`).

Base revision: OrangeFox `bootable/recovery`, branch `fox_12.1`, commit
`cbcc4f713dbef98d76d6d2cfd019b1ebfd9418e9` (20 September 2026). Details in `BASE_REVISION`.

The same source tree also builds
[Gursu-Bilisim/bramble-orangefox](https://github.com/Gursu-Bilisim/bramble-orangefox) and
[Gursu-Bilisim/jackpotlte-orangefox](https://github.com/Gursu-Bilisim/jackpotlte-orangefox), so the
patch contains the changes made for those devices as well. The three repositories carry the same
`bootable_recovery.diff`.

## What the patch changes

- `partitionmanager.cpp`: when the ROM's fstab is copied to `/etc/additional.fstab`,
  `/dev/block/bootdevice/by-name/` paths are rewritten to `/dev/block/by-name/`, so that
  `/data` is resolved to its block device and FBE is detected (made for tucana).
- `partitionmanager.cpp`: before metadata decryption, the `persist` partition (ext4) is mounted
  read-only at `/mnt/vendor/persist` and the `modem` partition (vfat) read-only at
  `/vendor/firmware_mnt`, so that the QTI keymaster and its listeners find their files (made for
  tucana). On A/B devices the modem partition name gets the slot suffix, and nothing is mounted
  when `/vendor/firmware_mnt/image` already exists. tucana is not A/B, so the partition name
  stays `modem`.
- `gui/patternpassword.cpp`, `gui/objects.hpp`: `GUIPatternPassword::IsInRegion`. A dot accepts
  touches within three dot radii of its centre, which reaches past the pattern's placement box
  for the corner dots. A touch that started there was outside the box, so the page ignored the
  whole gesture. The pattern now also claims touches that hit a dot (made for bramble).
- `minuitwrp/resources.cpp`, `minuitwrp/include/minuitwrp/minui.h`, `gui/nanosvg.cpp`,
  `gui/resources.cpp`: on devices built with `TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888`
  (`res_swap_red_blue()` returns 1), SVG output, tints and shapes swap red and blue (made for
  jackpotlte). tucana uses `RGBX_8888`, where the function returns 0 and the colours do not
  change; the `recovery` binary still needs the new `libminuitwrp.so`.
- `orangefox.mk`, `data.cpp`, `gui/pages.cpp`: new build variable `OF_SCREEN_BOTTOM_INSET`
  (pixels, default 0). The theme variables `screen_original_h` and `screen_h` become
  `OF_SCREEN_H` minus the inset, so the lock-screen swipe, the navigation buttons and the bottom
  menu move up by that amount. The theme is still scaled to the full `OF_SCREEN_H` (new constant
  `screen_full_h`), so nothing is stretched. With the default of 0 nothing changes (made for
  tucana, whose screen curves at the bottom edge).
- Theme (`pages/templates/templates.xml`, `resources/vars.xml`): the "show password" eye icon on
  the decrypt page only reacted to touches on its 64x46 px image. An invisible 144x144 px button
  centred on the icon (`pass_show_touch_x`, `pass_show_touch_y`) now does the same (made for
  tucana, where touches 2 to 50 px below the icon were missed on both test phones).
- Theme (`gui/theme/portrait_hdpi/themes/navbar.xml`): gesture navigation is off by default
  and the screen height no longer adds 96 px for a hidden navigation bar, which kept the
  bottom menu inside the screen and the lock-screen swipe usable on tucana.

## Applying

```bash
cd <OrangeFox source tree>/bootable/recovery
git checkout cbcc4f713dbef98d76d6d2cfd019b1ebfd9418e9
git apply <this repository>/recovery-patches/bootable_recovery.diff
```

`navbar.xml` uses CRLF line endings upstream; the diff keeps them, so apply it without
converting line endings.
