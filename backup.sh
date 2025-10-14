#!/bin/bash
# Backup home diectory to /tmp
backup_file="/tmp/home_backup_$(date +%Y%m%d%H%M%S).tar.gz"

tar -czPf $backup_file $HOME

echo "Saved it to: $backup_file"
