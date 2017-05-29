ansible all -m setup -a 'filter=ansible_devices'|egrep -e "SUCCESS|model|size"|grep -v sectorsize
