variable "security_group_ids" {
  type        = list(string)
  description = "A list of security group IDs to associate with the instance"
}

variable "public_subnets" {
  type        = list(string)
  description = "A list of public subnets to launch your EC2 instances in"
}
