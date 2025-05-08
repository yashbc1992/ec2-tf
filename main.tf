provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"

  subnet_id     = "subnet-02c98f1640c6ca613"  # Update this line with the correct subnet ID

  # Attach the key pair here
  key_name = "key-terraform"  # Name of your key pair created in AWS Console or CLI

  user_data = <<-EOF
              #!/bin/bash
              yum install -y wget unzip
              wget https://releases.hashicorp.com/terraform/1.11.3/terraform_1.11.3_linux_amd64.zip
              unzip terraform_1.11.3_linux_amd64.zip
              mv terraform /usr/local/bin/
              EOF

  tags = {
    Name = "ec2-tf"
  }
}
