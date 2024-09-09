
module "project_alb" {
  source    = "./modules/alb"
  ec2       = module.project_ec2.aws_instance
  ec2_sg    = module.project_ec2.ec2_sg
  subnet_id = ["subnet-0c0102a5423647adc", "subnet-0cac62965e1eddd26"]
  vpc_id    = "vpc-067e80a926124cbf5"
}