ansible all -m setup -a 'filter=ansible_memtotal_mb'|egrep -e "SUCCESS|mem"
