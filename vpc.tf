# provider "aws" {
#   region = "us-east-1"  
# }

# resource "aws_vpc" "my_vpc" {
#   cidr_block = "10.0.0.0/16"

#   tags = {
#     Name = "TerraVPC"
#   }
# }

# resource "aws_subnet" "my_subnet" {
#   vpc_id            = aws_vpc.my_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   map_public_ip_on_launch = true
#   availability_zone = "us-east-1a" 

#   tags = {
#     Name = "TerraSubnet"
#   }
# }

# resource "aws_internet_gateway" "my_igw" {
#   vpc_id = aws_vpc.my_vpc.id

#   tags = {
#     Name = "TerraInternetGateway"
#   }
# }

# resource "aws_route_table" "my_route_table" {
#   vpc_id = aws_vpc.my_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.my_igw.id
#   }

#   tags = {
#     Name = "TerraRouteTable"
#   }
# }

# resource "aws_route_table_association" "my_rta" {
#   subnet_id      = aws_subnet.my_subnet.id
#   route_table_id = aws_route_table.my_route_table.id
# }

# resource "aws_instance" "myec2" {
#     ami = "ami-04b4f1a9cf54c11d0"
#     instance_type = "t2.micro"
#     key_name = "teraaform-1"
#     security_groups = [ "default" ]
#     tags = {
#       Name = "spiderinstance"
#     }
# } 
