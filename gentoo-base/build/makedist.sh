#!/bin/bash

rm gentoo1.tar.xz &> /dev/null
rm gentoo2.tar.xz &> /dev/null
rm gentoo3.tar.xz &> /dev/null
rm gentoo4.tar.xz &> /dev/null
rm gentoo5.tar.xz &> /dev/null

rm gentoo-base/root/.bash_history &> /dev/null
rm -r gentoo-base/tmp/* &> /dev/null
rm -r gentoo-base/usr/portage &> /dev/null
rm -r gentoo-base/var/tmp/portage &> /dev/null
rm -r gentoo-base/var/log/* &> /dev/null

cd gentoo-base/
echo -n 'Start - '
date '+%H:%M:%S'
echo
XZ_OPT=-9 bsdtar --exclude="usr/lib64" --exclude="usr/share" -Jcf ../gentoo1.tar.xz .
echo -n 'OK - '
date '+%H:%M:%S'
echo -n '   - '
du -sh ../gentoo1.tar.xz
echo
XZ_OPT=-9 bsdtar -Jcf ../gentoo2.tar.xz usr/lib64/python*
echo -n 'OK - '
date '+%H:%M:%S'
echo -n '   - '
du -sh ../gentoo2.tar.xz
echo
XZ_OPT=-9 bsdtar --exclude="usr/lib64/python*" -Jcf ../gentoo3.tar.xz usr/lib64
echo -n 'OK - '
date '+%H:%M:%S'
echo -n '   - '
du -sh ../gentoo3.tar.xz
echo
XZ_OPT=-9 bsdtar -Jcf ../gentoo4.tar.xz usr/share/doc usr/share/man
echo -n 'OK - '
date '+%H:%M:%S'
echo -n '   - '
du -sh ../gentoo4.tar.xz
echo
XZ_OPT=-9 bsdtar --exclude="usr/share/doc" --exclude="usr/share/man" -Jcf ../gentoo5.tar.xz usr/share
echo -n 'OK - '
date '+%H:%M:%S'
echo -n '   - '
du -sh ../gentoo5.tar.xz
echo
echo -n 'Stop - '
date '+%H:%M:%S'
cd - &> /dev/null
