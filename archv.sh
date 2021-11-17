#!/bin/bash

bash 0-preinstall.sh
arch-chroot /mnt /root/ArchV/1-setup.sh
source /mnt/root/ArchV/install.conf
arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchV/2-user.sh
arch-chroot /mnt /root/ArchV/3-post-setup.sh