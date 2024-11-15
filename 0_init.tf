terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_key_pair" "ssuojae_key" {
  key_name = "ssuojae-key"
  public_key = file("/Users/jayoengchoi/WebstormProjects/practice_terraform/id_rsa.pub")  # 공개 키 경로

  tags = {
    Name = "ssuojae-key"
  }
}