#!/bin/bash
#Absolute path to this script
SCRIPT=$(readlink -f $0)
#Absolute path this script is in
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
USER=$(whoami)
sudo -E docker run --net=host --rm -e KEY -e DOC_KEY -e SECRETS_ARCHIVE_PASSPHRASE -e DUPLICITY_PASSPHRASE -e BACKUP_WORKFLOW -e ANSIBLE_VERBOSITY -v $SCRIPTPATH:/root/duplicity_playbooks -i ansible /root/duplicity_playbooks/launch_top_playbook.sh
