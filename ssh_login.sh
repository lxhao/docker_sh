hosts=`awk '{print $2}' /etc/hosts`
for node in $hosts 
do
	ssh $node
done
