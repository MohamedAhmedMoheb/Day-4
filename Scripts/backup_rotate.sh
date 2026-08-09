#!/bin/bash 
set -euo pipefail 
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
RETENTION_DAYS=2
mkdir -p backups

## ZIP THE FILE
tar -czf "backups/backup_${TIMESTAMP}.tar.gz" "$1" 
echo "${TIMESTAMP} Complete backup" >> backup.log

## DELETE old 
find backups -type f -mtime +${RETENTION_DAYS} -delete
