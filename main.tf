provider "aws" {}

locals {
  common_tags = "${merge(
    map(
      "Name", "${var.name}-${var.uuid}"
    )
  )}"
}

resource "aws_instance" "web" {
  ami           = "ami-d834aba1"
  instance_type = "t2.micro"
  tags          = "${local.common_tags}"
}
