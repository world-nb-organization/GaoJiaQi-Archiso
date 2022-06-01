#!/bin/bash
isopath=$1
isoname=${isopath##*/}
mountpath="/run/media/$USER/cdrom/$isoname/"
sudo mkdir "$mountpath" -p
sudo mount "$isopath" "$mountpath"
if [ $? = 0 ]
then
    dolphin "$mountpath"
fi