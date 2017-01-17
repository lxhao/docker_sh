 #!/bin/bash

  #把节点ip写入hosts文件
  echo "172.17.0.100    namenode" > /etc/hosts
  echo "172.17.0.101    datanode8" >> /etc/hosts
  echo "172.17.0.102    datanode8" >> /etc/hosts
  echo "172.17.0.103    datanode8" >> /etc/hosts
  echo "172.17.0.104    datanode8" >> /etc/hosts
  echo "172.17.0.105    datanode8" >> /etc/hosts
  echo "172.17.0.106    datanode8" >> /etc/hosts
  echo "172.17.0.107    datanode8" >> /etc/hosts
  echo "172.17.0.108    datanode8" >> /etc/hosts
  echo "172.17.0.109    datanode8" >> /etc/hosts
  
#设置IP
  case $HOSTNAME in
  "namenode")
      ifconfig eth0 172.17.0.100
      ;;
  "datanode"*)
      number=${HOSTNAME#"datanode"}
      ifconfig eth0 172.17.0.10${number}
      ;;
  *)
      echo "null"
      ;;
  esac
  
  #这句不写无法后台运行，ssh服务也不会开启
  /etc/init.d/ssh start -D
