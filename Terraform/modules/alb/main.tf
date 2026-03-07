resource "aws_lb" "finance_alb" {

  name               = "finance-alb"
  load_balancer_type = "application"

  subnets = var.subnet_ids
}