variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones for VPC subnets"
  default= ["us-east-2a", "us-east-2b"]
}

variable "region" {
  type        = string
  description = "AWS region"
   default = "us-east-2"
}
