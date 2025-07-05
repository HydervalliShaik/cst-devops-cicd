
variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2
}

variable "instance_type" {
  default = "t2.micro"
}