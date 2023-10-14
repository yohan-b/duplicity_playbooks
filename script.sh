#!/bin/bash
cd /root/duplicity_playbooks
ansible-galaxy collection install -r collections/requirements.yml
ansible-playbook playbook.yml
