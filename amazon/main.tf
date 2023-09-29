provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "eu-north-1"
}
resource "aws_instance" "rhel_test_vm" {
  ami           = "ami-0874ff0d73a3ab8cf"
  instance_type = "t3.micro"
  user_data     = "admin"

  tags = {
    Name = "test_VM"
  }

}

