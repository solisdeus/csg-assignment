variable "subnet_cidr" {
  description = "Define the subnet cidr for regional subnet"
  type        = string
  default     = "10.0.0.0/24"
}

variable "project" {
  description = "project-id of the project"
  type        = string
  default     = "sinuous-impact-274518"
}

variable "region" {
  description = "Region where the network must be created"
  type        = string
  default     = "us-east1"
}

variable "zone" {
  description = "zone where the subnet must be created"
  type        = string
  default     = "us-east1-b"
}