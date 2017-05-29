echo $0 $1
if [ $1 = "all-nodes" ]; then
 for A in `$PWD/show_running_hosts.sh|grep -v vm|grep -v avoton1|grep -v lab`; do echo ssh $A init 0; ssh $A init 0; done
else
 for A in `cat $1|grep -v ipmi`; do echo ssh $A init 6; ssh $A init 6; done
fi
