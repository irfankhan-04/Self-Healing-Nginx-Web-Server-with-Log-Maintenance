
#!/bin/bash
#Script to auto-restart Nginx if it's not running.
PROCESS="nginx"
if ! pgrep -x "$PROCESS" > /dev/null
then
echo "$PROCESS is not running. Restarting.
sudo systemctl start nginx
echo "$PROCESS restarted successfully."
else
echo "$PROCESS is running fine."
