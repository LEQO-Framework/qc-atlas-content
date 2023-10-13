#!/bin/bash
echo "try to clone the content repository from ${QC_ATLAS_CONTENT_REPOSITORY_URL} to ${QC_ATLAS_CONTENT_REPOSITORY_PATH}"

# clone repo and copy the file with the sql statements to the folder that is executed on startup of the postgres db
    git clone ${QC_ATLAS_CONTENT_REPOSITORY_URL} ${QC_ATLAS_CONTENT_REPOSITORY_PATH}
	if [ -d "${QC_ATLAS_CONTENT_REPOSITORY_PATH}/${SUBFOLDER_CONTENT_REPO_BACKUP_FILES}" ]; then
        cp ${QC_ATLAS_CONTENT_REPOSITORY_PATH}/${SUBFOLDER_CONTENT_REPO_BACKUP_FILES}/* /docker-entrypoint-initdb.d/
    else
	    echo "unable to find specified directory with example data in the repository"
	fi