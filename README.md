# ShellPrograms

# NOTE:

this script will replce the lines which starts with "aws." /etc/hosts file with latest IPs of aws instances
make sure your hosts file contains domains like ex:

AWS EC2 machines </br>
34.210.78.28	aws.node1 </br>
54.191.118.24	aws.node2 </br>
54.200.187.15	aws.node3 </br>
54.244.85.112	aws.master </br>

for the sake of utility keep aws EC2 names as same as domains names .. 

get AWS credentials like activation-key , secret-key:
create IAM user and get these keys of that user.


# usage of aws_ip_to_hosts.sh

1. install "awscli" after use "aws configure" command to confugure aws with activation-key,secret-key,default zone etc
2. chmod 755 aws_ip_to_hosts.sh
3.  ./aws_ip_to_hosts.sh

the script will automatically delete 
