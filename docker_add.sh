#!/bin/bash
echo -e "\033[32mThis scritps will create container!\033[0m"
read -p "Please input the number of containers you want to create : " -t 15 num_con
read -p "Please input the init name for container : " -t 15  name_con
read -p "Please input the first host port number to transfor the container's port : " -t 15 port
for((i=1;i<=$num_con;i=i+1))
	do
		_port=$(($port+i-1))
		docker run -t -i --name "$name_con$i" -d -p $_port:80 sevenot/ubuntu:test1 /bin/bash
	done
