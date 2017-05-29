ansible all -m setup -a 'filter=ansible_lsb'|egrep -e "SUCCESS|description"
