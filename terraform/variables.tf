
variable "region" {
  default = "us-east-1"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2
}

variable "key_name" {
  description = "EC2 Key pair name for SSH access"
  default     = "my-keypair-name"
}

variable "instance_type" {
  default = "t2.micro"
}