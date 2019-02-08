#!/bin/bash
# a script used to setup grub
grub-install
grub-install --target=x86_64-efi --efi-directory=/boot --removable
grub-mkfont -v -o /boot/grub/ter-x32n.pf2 ~dp/sysconf/kernel/ter-x32n.pcf.gz
grub-mkconfig -o /boot/grub/grub.cfg
