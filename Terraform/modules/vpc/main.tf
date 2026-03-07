resource "aws_vpc" "finance_vpc" {
  cidr_block = var.cidr

  tags = {
    Name = "finance-vpc"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id            = aws_vpc.finance_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-1a"
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.finance_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-1c"
}

resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.finance_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "ap-northeast-1a"
}

resource "aws_subnet" "private_b" {
  vpc_id            = aws_vpc.finance_vpc.id
  cidr_block        = "10.0.11.0/24"
  availability_zone = "ap-northeast-1c"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.finance_vpc.id
}