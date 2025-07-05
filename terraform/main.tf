# terraform/main.tf
provider "aws" {
  region = var.region
}

resource "aws_instance" "frontend" {
  ami           = var.ami
  instance_type = var.instance_type
}