# Public Subnets (2 AZs)
resource "aws_subnet" "public_usw2a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.32.0/20"
  availability_zone       = "us-west-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "yoloh-lab-dev-subnet-public-usw2a"
  }
}

resource "aws_subnet" "public_usw2b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.16.0/20"
  availability_zone       = "us-west-2b"
  map_public_ip_on_launch = true

  tags = {
    Name = "yoloh-lab-dev-subnet-public-usw2b"
  }
}

# Private Subnets (2 AZs)
resource "aws_subnet" "private_usw2c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/20"
  availability_zone       = "us-west-2c"
  map_public_ip_on_launch = false

  tags = {
    Name = "yoloh-lab-dev-subnet-private-usw2c"
  }
}

resource "aws_subnet" "private_usw2d" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.48.0/20"
  availability_zone       = "us-west-2d"
  map_public_ip_on_launch = false

  tags = {
    Name = "yoloh-lab-dev-subnet-private-usw2d"
  }
}