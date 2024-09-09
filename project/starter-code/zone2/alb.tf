
module "project_alb" {
  source    = "./modules/alb"
  ec2       = module.project_ec2.aws_instance
  ec2_sg    = module.project_ec2.ec2_sg
  subnet_id = ["subnet-0ee6710e62155a433", "subnet-0370af9d1fa892067"]
  vpc_id    = "vpc-004fe25a1e94dfa60"
}