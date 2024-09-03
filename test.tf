provider "aws" {
    region = "us-east-1"
}

resource "aws_lb" "this" {
  name               = "test-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-12345678910"]
  subnets            = ["subnet-1233445", "subnet-345678991"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "test-bucket"
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}