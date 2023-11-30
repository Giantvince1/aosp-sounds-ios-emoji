#!/bin/sh
breakdynfonts() {
    mkdir /data/fonts
    chown root:root /data/fonts
    chmod 1000 /data/fonts
    chattr +i /data/fonts
    chmod +t /data
    ui_print "************************************************"
    ui_print "Disabled dynamic font updates completely."
    ui_print "This is required! Google is to blame!"
    ui_print "This creates the needed folder and marks"
    ui_print "the folder immutable, and sets sticky on /data."
    ui_print "This effectively makes it a dummy empty folder."
    ui_print "This is JUST to allow custom fonts to work."
    ui_print "************************************************"
    ui_print ""
}
if [ -f /data/fonts ]
then
    if [ $(lsattr /data/fonts -d | cut -c -20 | grep i) ] && [ $(stat /data -c %A | grep -i t) ]
    then
        ui_print "************************************************"
        ui_print "This device already blocks dynamic font updates."
        ui_print "No need to re-implement the block again."
        ui_print "************************************************"
        ui_print ""
    else
        rm -rf /data/fonts
        breakdynfonts
    fi
else
    ui_print "************************************************"
    ui_print "Device has never seen a dynamic font update yet."
    ui_print "Fixing structure anyway to block them..."
    ui_print "************************************************"
    ui_print ""
    breakdynfonts
fi
if [ $(getprop ro.boot.device) = "gnevan" ]
then
    ui_print "************************************************"
    ui_print "This module supports this device completely!"
    ui_print "Keeping headphone jack volume mod intact."
    ui_print "This bit forces the headphone jack to actually"
    ui_print "produce full output volume on this device."
    ui_print "This mod ONLY works on the Moto G Stylus non-5G"
    ui_print "2023 model! NO OTHER DEVICE WILL KEEP THIS MOD!"
    ui_print "************************************************"
    ui_print ""
else
    rm -rf $MODPATH/system/vendor
    ui_print "************************************************"
    ui_print "This device does NOT support the headphone jack"
    ui_print "volume mod included in this module. Removing"
    ui_print "the offending file to prevent over-current"
    ui_print "from the file not matching what exists already."
    ui_print "************************************************"
    ui_print ""
fi