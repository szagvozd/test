module "alb_example_complete-alb" {
  source  = "terraform-aws-modules/alb/aws//examples/complete-alb"
  version = "9.11.0"
  tags = {
    EpicWAF = "baseline"
  }
}