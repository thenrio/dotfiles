convert iso to dmg
==================

```
hdiutil convert -format UDRW debian-testing-amd64-netinst.iso -o debian-testing-amd64-netinst.dmg
```

find device
===========

```
/dev/disk0
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *121.3 GB   disk0
   1:                        EFI EFI                     209.7 MB   disk0s1
   2:                  Apple_HFS Macintosh HD            68.4 GB    disk0s2
   3:                 Apple_Boot Recovery HD             650.0 MB   disk0s3
/dev/disk1
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:     FDisk_partition_scheme                        *8.1 GB     disk1
   1:                       0xEF                         32.5 MB    disk1s2
```

=> /dev/disk1

unmount
=======

```
diskutil unmountDisk /dev/disk1
```

dd
==

```
sudo dd if=debian-testing-amd64-netinst.dmg of=/dev/rdisk1 bs=1m
```

eject
=====

```
diskutil eject /dev/disk1
```
documentation
=============
http://computers.tutsplus.com/tutorials/how-to-create-a-bootable-ubuntu-usb-drive-for-mac-in-os-x--cms-21253
