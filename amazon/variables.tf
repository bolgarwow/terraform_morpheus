#код авторизации в AWS
variable "aws_access_key" {
  type      = string
  sensitive = true
}
variable "aws_secret_key" {
  type      = string
  sensitive = true
}
# конец авторизации


variable "list_of_users" {
  default = ["vasya", "petya", "admin", "db_admin"]
}

