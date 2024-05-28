provider "aws"{
region= "ap-south-1"
}

resource "aws_instance" "AWSEC2Instance"{
    count= 4
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type= "t2.micro"
    key_name= "devopsmarch6batch"
    security_groups=["launch-wizard-24"]
    tags={
        Name=["server1","server2","server3","server4"]
    }
}   

