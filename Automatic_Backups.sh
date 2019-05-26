#!/bin/bash

FLASHDRIVE=/dev/sdx
WATCHFOLDER1=/mnt/Backups/Watch_Folder
SERVERBACKUPS=/mnt/Backups/XCP-NG_Backups

sudo mv -R $FLASHDRIVE $WATCHFOLDER1

sudo rclone move --size-only --transfers=12 $WATCHFOLDER1 school:Data_Dump
sudo rclone move --size-only --transfers=12 $SERVERBACKUPS school:XCP-NG_Backups
