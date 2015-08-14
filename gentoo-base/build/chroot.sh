#!/bin/bash

cp -p update.sh gentoo-base/root/ &> /dev/null
mount -t proc proc gentoo-base/proc/
mount --rbind /dev/ gentoo-base/dev/
mount --rbind /sys/ gentoo-base/sys/

chroot gentoo-base/ /bin/bash

umount -l gentoo-base/proc/ gentoo-base/dev/ gentoo-base/sys/
rm gentoo-base/root/update.sh &> /dev/null
