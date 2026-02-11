#Backup Script#

#!/bin/bash

#Folder to backup 
SOURCE_FOLDER="my_folder"

#Backup Folder Destination#
BACKUP_FOLDER="backup"

#Create backup folder if one does not exist#
mkdir -p $BACKUP_FOLDER

#Creates a backup that is timestamped#
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
tar -czf "$BACKUP_FOLDER/backup_$TIMESTAMP.tar.gz" $SOURCE_FOLDER

echo "Backup of $SOURCE_FOLDER completed at $TIMESTAMP"
