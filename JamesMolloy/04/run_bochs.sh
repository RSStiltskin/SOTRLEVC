#!/bin/bash

# run_bochs.sh
# mounts the correct loopback device, runs bochs, then unmounts.

sudo /sbin/losetup /dev/loop8 floppy.img
sudo bochs -f bochsrc.txt
sudo /sbin/losetup -d /dev/loop8
