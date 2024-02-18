#!/bin/sh
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
