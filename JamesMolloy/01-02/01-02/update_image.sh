#!/bin/bash

sudo /sbin/losetup /dev/loop2 floppy.img
sudo mount /dev/loop2 /mnt
sudo cp src/kernel /mnt/kernel
sudo umount /dev/loop2
sudo /sbin/losetup -d /dev/loop2
