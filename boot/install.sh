#!/usr/bin/env bash
sudo mount /dev/sdb1 /boot/efi
sudo cp refind.conf /boot/efi/EFI/BOOT/refind.conf
sync
echo ok
