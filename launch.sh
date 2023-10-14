#!/bin/bash
#Absolute path to this script
SCRIPT=$(readlink -f $0)
#Absolute path this script is in
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
USER=$(whoami)
sudo -E docker run --net=host --rm -e KEY -e SECRETS_ARCHIVE_PASSPHRASE -v ~/repository/docker-duplicity-stack:/root/docker-duplicity-stack -v $SCRIPTPATH:/root/duplicity_playbooks -i ansible /root/duplicity_playbooks/script.sh
