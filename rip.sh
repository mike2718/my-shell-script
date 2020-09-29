umount /dev/sr0
dd if=/dev/sr0 of=dvd.iso status=progress
md5sum dvd.iso;dd if=/dev/sr0 bs=2048 status=progress count=$(( $(stat -c "%s" dvd.iso) / 2048 )) | md5sum
sync
sync
eject /dev/sr0
