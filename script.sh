#!/bin/bash
cd /root/duplicity_playbooks
ansible-galaxy collection install -r collections/requirements.yml
source /root/openrc.sh
ansible-playbook down.yml
