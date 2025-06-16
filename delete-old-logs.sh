#!/bin/bash
#housekeeping script to delete 7 days old logs
LOG DIR="/var/log/nginx"
find "$LOG DIR" -type f -name "*.log" -mtime +7 -exec rm -f [] \;
echo Old log files deleted from "$LOG DIR"
