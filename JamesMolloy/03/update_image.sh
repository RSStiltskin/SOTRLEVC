#!/bin/bash

sudo /sbin/losetup /dev/loop8 floppy.img
sudo mount /dev/loop8 /mnt
sudo cp src/kernel /mnt/kernel
sudo umount /dev/loop8
sudo /sbin/losetup -d /dev/loop8
