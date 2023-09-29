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

resource "morpheus_aws_cloud" "AWS-grigorenko" {
  name                       = "AWS-grigorenko"
  code                       = "AWS-grigorenko"
  location                   = "AWS"
  visibility                 = "public"
  tenant_id                  = 169
  enabled                    = true
  automatically_power_on_vms = true
  region                     = "eu-north-1"
  access_key                 = var.aws_access_key
  secret_key                 = var.aws_secret_key
  inventory                  = "full"
  vpc                        = "all"
  appliance_url              = "https://morpheus.local"
  time_zone                  = "Europe/Warsaw"
  ebs_encryption             = true
  datacenter_id              = "tfawsdemo"
  guidance                   = "manual"
  costing                    = "full"
  agent_install_mode         = "cloudInit"
}

resource "morpheus_group" "terraform_rg" {
  name      = "terraform_rg"
  code      = "terraformrg"
  location  = "AWS"
  cloud_ids = [morpheus_aws_cloud.AWS-grigorenko.id]
}
