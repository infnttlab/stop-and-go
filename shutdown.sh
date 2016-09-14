echo $0 $1
if [ $1 = "all-nodes" ]; then
 for A in `cat *nodes|grep -v ipmi`; do echo ssh $A init 0; ssh $A init 0; done
else
 for A in `cat $1|grep -v ipmi`; do echo ssh $A init 0; ssh $A init 0; done
fi
