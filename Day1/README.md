This Terraform project sets up a network infrastructure and compute resources in AWS. It creates a VPC, EC2 instances, security groups, and associated resources.

## Prerequisites
Before running this Terraform configuration, ensure that you have the following prerequisites:

#### 1- AWS account credentials with appropriate permissions to create resources.
#### 2- Terraform installed on your local machine.
#### 3- AWS Configuration
Create an AWS provider configuration by creating a file named provider.tf with the following content:

```
provider "aws" {
  region = "us-east-1" 
}

```
#### Networking Part

1- Create a file named vpc.tf to define the VPC and its associated resources. You can refer to the official documentation on the Terraform Registry for examples and resource definitions.

2- VPC Creation: The vpc.tf file should define the VPC resource. Configure the desired CIDR block, subnets, and availability zones.

3- Internet Gateway: Create an internet gateway in the VPC to allow internet access. You can use the aws_internet_gateway resource.

4- Public Route Table: Create a public route table for the public subnet(s). Use the aws_route_table resource to define the route table and associate it with the VPC.

5- Private Route Table: Create a private route table for the private subnet(s). Use the aws_route_table resource to define the route table and associate it with the VPC.

6- Public Route: Define a public route in the public route table to route traffic to the internet. Use the aws_route resource to define the route.

7- Subnet Associations: Associate the public route table with the public subnet(s) using the aws_route_table_association resource.

#### Computing Part
8- Security Group 1: Create a security group that allows SSH access from any IP address (0.0.0.0/0).

9- Security Group 2: Create a security group that allows SSH access and port 3000 only from the VPC CIDR block.

10- Bastion Instance: Create an EC2 instance in the public subnet and associate it with Security Group 1 to allow SSH access.

11- Application Instance: Create an EC2 instance in the private subnet and associate it with Security Group 2 to allow SSH and port 3000 access from within the VPC.

#### Usage
Initialize Terraform:
```
terraform init

```
Review the execution plan:
```
terraform plan
```
Apply the changes to create the AWS resources:

```
terraform apply
```
Destroy the created resources when no longer needed:
```
terraform destroy
```

Please note that this is a simplified example, and it's recommended to further customize and enhance the configuration based on your specific requirements.

For more information on using Terraform with AWS, refer to the official Terraform documentation and the AWS provider documentation.