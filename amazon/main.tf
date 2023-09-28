resource "aws_instance" "rhel_test_vm" {
  ami           = "ami-0874ff0d73a3ab8cf"
  instance_type = "t3.micro"

}
