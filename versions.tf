terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.50.0"
    }
  }
}

provider "aws" {
  region              = "ap-southeast-1"
  shared_config_files = [var.tfc_aws_dynamic_credentials.default.shared_config_file]
}

provider "aws" {
  region              = "ap-southeast-1"
  alias               = "ALIAS1"
  shared_config_files = [var.tfc_aws_dynamic_credentials.aliases["ALIAS1"].shared_config_file]
}
