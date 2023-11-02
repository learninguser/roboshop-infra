#!/bin/bash

yum install ansible -y
cd /tmp
git clone https://github.com/learninguser/jd-roboshop-ansible.git

cd jd-roboshop-ansible

for component in catalogue cart user shipping payment frontend mongodb mysql rabbitmq redis dispatch; do
    ansible-playbook -i inventory -e ansible-user=centos -e ansible-passwod=DevOps321 "${component}.yaml"
done