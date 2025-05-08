variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0e449927258d45bc4"  # Amazon Linux 2 in us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}
