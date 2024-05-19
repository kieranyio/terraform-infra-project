module "vpc" {
  source  = "app.terraform.io/kieranyio/vpc/aws"
  version = "0.0.4"
}

resource "aws_vpc_endpoint" "s3" {
  vpc_id       = module.vpc.id
  service_name = "com.amazonaws.${var.aws_region}.s3"
}
