variable "azs" {
  type        = list(string)
  description = "A list of the Availability Zones you wish to provision infrastructure in"
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of the Public Subnet IDs you wish to use"
}

variable "private_subnets" {
  type        = list(string)
  description = "A list of the Private Subnet IDs you wish to use"
}
