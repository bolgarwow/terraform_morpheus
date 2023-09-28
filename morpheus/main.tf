terraform {
  required_providers {
    morpheus = {
      source  = "gomorpheus/morpheus"
      version = "0.9.4"
    }
  }
}

provider "morpheus" {
  url          = var.morpheus_url
  access_token = var.access_token
}

resource "morpheus_environment" "tfdemo" {
  active      = true
  code        = "tfdemo"
  description = "Terraform provider demo environment"
  name        = "Terraform_env"
}
