umount /dev/sr0
xorriso -as cdrecord -v dev=/dev/sr0 -speed=1 -dao /home/mike/iso/备份文件.iso -eject
