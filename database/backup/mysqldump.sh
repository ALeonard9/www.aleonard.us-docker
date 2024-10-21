#!/bin/bash

ENV="$1"

set -a
source ~/dev/www.aleonard.us-docker/orion/env/$ENV.env
set +a

# Configuration
DB_NAME=$MYSQL_DATABASE
DB_USER=root
DB_PASSWORD=$MYSQL_ROOT_PASSWORD
BACKUP_DIR=$BACKUP_VOLUME_PATH # Adjust this to your NAS mount point
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_backup_${ENV}_${DATE}.sql"

# Ensure the backup directory exists
mkdir -p $BACKUP_DIR

# Execute the backup
docker exec gs_orion_db_$ENV \
  mysqldump -u${DB_USER} -p${DB_PASSWORD} ${DB_NAME} > $BACKUP_FILE

# Optional: Remove backups older than 30 days
find $BACKUP_DIR -type f -name "${DB_NAME}_backup_*.sql" -mtime +30 -exec rm {} \;

echo "Backup completed: ${BACKUP_FILE}"


