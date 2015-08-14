#!/bin/bash

emerge --sync
env-update
source /etc/profile
emerge -aDNquv world
etc-update
perl-cleaner --all
python-updater
emerge -av --depclean
revdep-rebuild
emerge -1av @preserved-rebuild
