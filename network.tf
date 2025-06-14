resource "aws_vpc"  "net1" {

 cidr_block = "10.20.0.0/16"
 tags = { Name = "NW1"
}
}

resource "aws_subnet"  "sub1"{

cidr_block = "10.20.1.0/24"
vpc_id = aws_vpc.net1.id
map_public_ip_on_launch = true
 tags = { Name = "SubN1"
}
}

resource "aws_internet_gateway" "gw1" {
  vpc_id = aws_vpc.net1.id

  tags = {
    Name = "IGW1"
  }
}

resource "aws_route_table" "custom_rt_1" {
  vpc_id = aws_vpc.net1.id

  route {
 cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw1.id
  }

  tags = {
    Name = "CustomIG1"
  }
}

resource "aws_route_table_association" "art1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.custom_rt_1.id
}