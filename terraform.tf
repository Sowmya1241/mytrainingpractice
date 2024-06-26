resource "aws_instance" "frontend"{
  ami = "ami-090252cbe067a9e58"
  instance_type= "t2.micro"
  vpc_security_group_ids = ["sg-00d7fa32c4ab062ea"]
  tags = {
    Name = "frontend"

  }
}
resource "aws_instance" "backend"{
  ami = "ami-090252cbe067a9e58"
  instance_type= "t2.micro"
  vpc_security_group_ids = ["sg-00d7fa32c4ab062ea"]
  tags = {
    Name = "backend"

  }
}
resource "aws_instance" "mysql"{
  ami = "ami-090252cbe067a9e58"
  instance_type= "t2.micro"
  vpc_security_group_ids = ["sg-00d7fa32c4ab062ea"]
  tags = {
    Name = "mysql"

  }
}