variable "name1" {
type        = string
description = "name env"
 
  
}

variable "arn" {
type        = string
description = "name of arn"
  default="arn:aws:iam::863309687429:role/service-role/AmazonMWAA-MyAirflowEnvironment"
}
