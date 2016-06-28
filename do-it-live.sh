#!/bin/bash

export OS_CLIENT_CONFIG_FILE="$(pwd)/clouds-operator.yml"
ansible-playbook -i hosts.txt operator-prep.yml 

export OS_CLIENT_CONFIG_FILE="$(pwd)/clouds-user.yml"
ansible-playbook -i hosts.txt marketing.yml

unset OS_CLIENT_CONFIG_FILE
