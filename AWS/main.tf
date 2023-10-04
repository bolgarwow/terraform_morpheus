terraform {
  backend "remote" {
    organization = "bolgarwow"
    workspaces {
      name = "terraform_morpheus"
    }
  }
}
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "eu-north-1"
}
