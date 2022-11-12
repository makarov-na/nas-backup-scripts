#!/bin/bash
postfix=$(date '+%y-%m-%d')
echo ========photo sync start $(date)=========== >> /home/xbian/backup_logs/sync_$postfix.log
rsync --progress -r  -v -t --del /media/WDRED4G/photo/ /media/WDGREEN1GB/photo/ >> /home/xbian/backup_logs/sync_$postfix.log
echo ========photo sync stop $(date)============ >> /home/xbian/backup_logs/sync_$postfix.log

echo ========video sync start $(date)=========== >> /home/xbian/backup_logs/sync_$postfix.log
rsync --progress -r  -v -t --del /media/WDRED4G/video/Видеосъемки/ /media/WDGREEN1GB/video/Видеосъемки/ >> /home/xbian/backup_logs/sync_$postfix.log
echo ========video sync stop $(date)============ >> /home/xbian/backup_logs/sync_$postfix.log

echo ========documents sync start $(date)=========== >> /home/xbian/backup_logs/sync_$postfix.log
rsync --progress -r  -v -t --del /media/WDRED4G/documents/ /media/WDGREEN1GB/documents/ >> /home/xbian/backup_logs/sync_$postfix.log
echo ========documents sync stop $(date)============ >> /home/xbian/backup_logs/sync_$postfix.log