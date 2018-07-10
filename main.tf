provider "aws" {}

resource "aws_instance" "web" {
  ami           = "ami-d834aba1"
  instance_type = "t2.micro"

  tags {
    Name = "${var.name}-${var.uuid}"
  }
}
