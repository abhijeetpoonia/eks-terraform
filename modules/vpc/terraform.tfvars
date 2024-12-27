vpc_cidr_block = "10.0.0.0/16"

public_subnet_cidr_blocks = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]

private_subnet_cidr_blocks = ["10.0.4.0/24","10.0.5.0/24", "10.0.6.0/24"]

aws_availability_zones = ["us-east-2a", "us-east-2b", "us-east-2c"]

vpc_tag_name = "MyCustomVPC"

aws_route_table_public_tag_name = "my-public-route-table"
aws_route_table_private_tag_name = "my-private-route-table"

aws_internet_gateway_tag_name = "my-internet-gateway"

public_subnet_1_tag_name = "public-subnet-1"
public_subnet_2_tag_name = "public-subnet-2"
public_subnet_3_tag_name = "public-subnet-3"


private_subnet_1_tag_name = "private-subnet-1"
private_subnet_2_tag_name = "private-subnet-2"
private_subnet_3_tag_name = "private-subnet-3"

env = "dev"

region = "us-east-2"
