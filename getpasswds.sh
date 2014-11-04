# Bash script to pullout passwords from kippo logfile.
# Change KIPPO_LOGFILE to point to your log files.
# Don't forget to put the '*' at the end if you have lots
# of log files..
#
# readlog should live in the same folder as this script
# or things will blow up and destroy the world as you
# know it.
# INSTALL & RUN:
# Type: chmod +x readlog; chmod +x getpasswds.sh;./getpasswds.sh
KIPPO_LOGFILE="/root/kippo/kippo/log/kippo.log*"
cat $KIPPO_LOGFILE|grep "attempt"|awk '{print $9}'|./readlog
