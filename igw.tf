# Internet Gateway attached to the VPC
resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "yoloh-lab-dev-igw"
  }
}