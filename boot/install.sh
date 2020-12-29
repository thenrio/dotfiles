#!/usr/bin/env bash
sudo mount /dev/sda1 /boot/efi
sudo cp refind.conf /boot/efi/EFI/BOOT/refind.conf
sync
echo ok
sleep 2
sudo reboot
