Networking
1- create vpc
Firstly create a provider for defining the "AWS" is our provider and the region
create vpc.tf file and get the resource from Terraform registry offcial docs https://registry.terraform.io/
then create 4 Ec2, 2 public and 2 private

2- create internet gateway in the vpc
3- create public route table
4- create private route table
5- create public route
6- attach public route table to subnets

and here we should use "aws_route_table_association" to make this association between the subnet and the routetable 

Compute
7- create security group which allow ssh from 0.0.0.0/0
8- create security group that allow ssh and port 3000 from vpc cidr only
9- associate ec2(bastion) in public subnet with security group from 7
10- associate ec2(application) private subnet with security group from 8
