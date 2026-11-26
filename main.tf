# Step 1: Custom VPC (10.0.0.0/16)
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "yoloh-lab-dev-vpc"
  }
}