#!/bin/bash
echo '---------------------'

/bin/ansible-playbook /home/ansible/ansible_playbooks/create_listof_users.yml
/bin/ansible all -m archive -a 'path=/var/www/html dest=/var/www/html/file.tar.gz'
/bin/ansible all -m archive -a 'path=/var/log dest=/var/log/logs.tar.gz'
/bin/ansible all -m command -a 'tar tvf /var/log/logs.tar.gz'


