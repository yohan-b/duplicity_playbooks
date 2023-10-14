#!/bin/bash
#Absolute path to this script
SCRIPT=$(readlink -f $0)
#Absolute path this script is in
SCRIPTPATH=$(dirname $SCRIPT)

cd $SCRIPTPATH
USER=$(whoami)
/home/$USER/get_secrets.sh

cd $SCRIPTPATH

sudo docker run --net=host --rm -v ./id_rsa:/root/.ssh/id_rsa -v ~/repository/docker-duplicity-stack:/root/docker-duplicity-stack -v ./:/root/duplicity_playbooks -v ~/openrc.sh:/root/openrc.sh -i ansible /root/duplicity_playbooks/script.sh
