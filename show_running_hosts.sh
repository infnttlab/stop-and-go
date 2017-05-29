nmap -sn 10.0.0.0/24|grep -v down|grep report|sort -n|awk '{print $5}'ls
#for A in `nmap -sn 10.0.0.0/24|grep -v down|grep report|sort -n|awk '{print $5}'ls`
#do
#echo $A; ssh $A cat /etc/issue
#done
