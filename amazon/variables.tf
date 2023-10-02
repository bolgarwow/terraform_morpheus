variable "aws_access_key" {
  type      = string
  sensitive = true
}
variable "aws_secret_key" {
  type      = string
  sensitive = true
}
variable "nsg_default" {
  default = "sg-037fd92538c01600d"
}
variable "key_name" {
  default = "sshconnecttion"
}
