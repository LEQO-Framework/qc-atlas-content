#!/bin/bash
echo "checking if ssh key for the atlas content repo is present"
FILE=/run/secrets/ssh_secret
# if ssh key is not empty, init the db with data:
if test -f "$FILE"; then
    echo "ssh key present"
# add ssh key and add github as known host
    mkdir /root/.ssh/ && cp /run/secrets/ssh_secret /root/.ssh/id_rsa
    chmod 400 /root/.ssh/id_rsa && ssh-keyscan github.com >> /root/.ssh/known_hosts
# clone repo and copy the file with the sql statements to the folder that is executed on startup of the postgres db
    git clone ${QC_ATLAS_CONTENT_REPOSITORY_URL} ${QC_ATLAS_CONTENT_REPOSITORY_PATH}
	if [ -d "${QC_ATLAS_CONTENT_REPOSITORY_PATH}/${SUBFOLDER_CONTENT_REPO_BACKUP_FILES}" ]; then
        cp ${QC_ATLAS_CONTENT_REPOSITORY_PATH}/${SUBFOLDER_CONTENT_REPO_BACKUP_FILES}/* /docker-entrypoint-initdb.d/
    else
	    echo "unable to find specified directory with example data in the repository"
	fi
else
    echo "ssh key not present, proceeding with empty db"
fi