#!/bin/bash

yum install ansible -y
cd /tmp
git clone https://github.com/learninguser/jd-roboshop-ansible.git

cd jd-roboshop-ansible

for component in frontend mongodb catalogue redis user cart mysql shipping rabbitmq payment dispatch; do
    ansible-playbook -i inventory -e ansible_user=centos -e ansible_passwod=DevOps321 "${component}.yaml"
done