[ -f /data/fonts ] && rm -rf /data/fonts
mkdir /data/fonts
chown root:root /data/fonts
chmod 1000 /data/fonts
chattr +i /data/fonts
chmod +t /data
ui_print "Killed any chance for dynamic font updates via /data/fonts folder"
ui_print "This is required, otherwise the emoji font won't remain permanent."
ui_print "Please blame Google for implementing the /data/fonts dynamic update bit!"
ui_print "This change will be reverted upon uninstall. It just marks /data/fonts as immutable"
ui_print "then proceeds to mark /data sticky to prevent inode removal."
ui_print "This should not break any devices unless they wrongly check sticky bit on /data for any reason."