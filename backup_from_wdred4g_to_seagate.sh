#!/bin/bash
sleep 10
postfix=$(date '+%y-%m-%d')
echo ========ext photo sync start $(date)=========== >> /home/xbian/backup_logs/sync_ext_$postfix.log
rsync --progress -r  -v -t --del /media/WDRED4G/photo/ /media/Seagate\ Expansion\ Drive/backup/photo/ >> /home/xbian/backup_logs/sync_ext_$postfix.log
echo ========ext photo sync stop $(date)============ >> /home/xbian/backup_logs/sync_ext_$postfix.log

echo ========ext video sync start $(date)=========== >> /home/xbian/backup_logs/sync_ext_$postfix.log
rsync --progress -r  -v -t --del /media/WDRED4G/video/Видеосъемки/ /media/Seagate\ Expansion\ Drive/backup/video/Видеосъемки/ >> /home/xbian/backup_logs/sync_ext_$postfix.log
echo ========ext video sync stop $(date)============ >> /home/xbian/backup_logs/sync_ext_$postfix.log

echo ========ext documents sync start $(date)=========== >> /home/xbian/backup_logs/sync_ext_$postfix.log
rsync --progress -r  -v -t --del /media/WDRED4G/documents/ /media/Seagate\ Expansion\ Drive/backup/documents/ >> /home/xbian/backup_logs/sync_ext_$postfix.log
echo ========ext documents sync stop $(date)============ >> /home/xbian/backup_logs/sync_ext_$postfix.log
