variable "vpc_name" {}
variable "vpc_range" {}
variable "azs" {}
variable "private_subnets" {}
variable "public_subnets" {}
variable "enable_nat_gateway" {
  default = false
}
variable "enable_vpn_gateway" {
  default = false
}
variable "region" {}