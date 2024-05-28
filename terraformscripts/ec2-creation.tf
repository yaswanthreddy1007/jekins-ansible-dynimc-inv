provider "aws"
{
  region="ap-south-1"
}

resource "aws_instance" "AWSEC2INSTANCE "
{
  ami="ami-0cc9838aa7ab1dce7"
  instance_type= "t2.micro"
  key_name= "devopsmarch6batch.pem"
  security_group=["launch-wizard-12"]
  tags={
    Name= "Terraform"
  }
}

