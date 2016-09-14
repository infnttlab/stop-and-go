echo $0 $1
if [ $1 = "all-nodes" ]; then
 for A in `cat *nodes|grep -v n3700|grep -v jetson|grep ipmi`; do echo Starting up $A; echo ipmitool -H $A -U admin -P cnaf1cnaf power on; done
else
 for A in `cat $1|grep ipmi`; do echo Starting up $A; ipmitool -H $A -U admin -P cnaf1cnaf power on; done
fi
