provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "eu-north-1"
}

resource "aws_iam_user" "addusers" {
  count = length(var.list_of_users)
  name  = element(var.list_of_users, count.index)
}
