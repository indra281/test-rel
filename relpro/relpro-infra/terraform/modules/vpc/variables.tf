variable "availability_zone" {
}

variable "availability_zone2" {
}

variable "region" {
}

variable "environment" {
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
}

variable "public_ssh_subnet_cidr" {
  description = "CIDR for the Public Subnet for SSH"
}

//variable "public_http_meta_subnet_cidr" {
//  description = "CIDR for the Public Subnet for meta server"
//}

variable "public_http_app_subnet1_cidr" {
  description = "CIDR for the first Public Subnet for App ELBs"
}

variable "public_http_app_subnet2_cidr" {
  description = "CIDR for the second Public Subnet for App ELBs"
}

variable "private_rds_subnet1_cidr" {
  description = "CIDR for the Private Subnet 1 for app db servers"
}

variable "private_rds_subnet2_cidr" {
  description = "CIDR for the Private Subnet 2 for app db servers"
}

//variable "private_meta_rds_subnet1_cidr" {
//  description = "CIDR for the Private Subnet 1 for Meta db servers"
//}

//variable "private_meta_rds_subnet2_cidr" {
//  description = "CIDR for the Private Subnet 2 for Meta db servers"
//}

variable "private_app_subnet_cidr" {}

variable "private_app_subnet_2_cidr" {
  description = "CIDR for the Private Subnet with App servers"
  type        = string
}

variable "openvpn_server_enabled" {
}

variable "upstream_external_access_ips" {
  type    = map(string)
  default = {}

  # example
  # {"100.24.250.124/32" = "Old OpenVpn IP"}

}

variable "bastion_allowed_cidr" {
  default = "0.0.0.0/0"
}

// tags for cost management
variable "project" {
  type    = string
  default = "Default"
}
variable "platform" {
  type    = string
  default = "Krypton"
}

variable "private_rds_reporting_subnet1_cidr" {}

variable "private_rds_reporting_subnet2_cidr" {}



variable "db_availability_zone_1" {
  default = ""
}

variable "db_availability_zone_2" {
  default = ""
}