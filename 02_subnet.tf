# Puba 서브넷
resource "aws_subnet" "ssuojae_puba" {
  vpc_id            = aws_vpc.ssuojae_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "ssuojae-puba"
  }
}

# Pubc 서브넷
resource "aws_subnet" "ssuojae_pubc" {
  vpc_id            = aws_vpc.ssuojae_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "ssuojae-pubc"
  }
}

# Pria 서브넷
resource "aws_subnet" "ssuojae_pria" {
  vpc_id            = aws_vpc.ssuojae_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "ssuojae-pria"
  }
}


# PriC 서브넷
resource "aws_subnet" "ssuojae_pric" {
  vpc_id            = aws_vpc.ssuojae_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "ssuojae-pric"
  }
}

# dba 서브넷
resource "aws_subnet" "ssuojae_dba" {
  vpc_id            = aws_vpc.ssuojae_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "ssuojae-dba"
  }
}

# dbc 서브넷
resource "aws_subnet" "ssuojae_dbc" {
  vpc_id            = aws_vpc.ssuojae_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "ssuojae-dbc"
  }
}






