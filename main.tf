module "vpc" {
  source  = "app.terraform.io/kieranyio/vpc/aws"
  version = "0.0.4"
}

module "vpc2" {
  source  = "app.terraform.io/kieranyio/vpc/aws"
  version = "0.0.4"
  providers = {
    aws = aws.ALIAS1
  }
}
