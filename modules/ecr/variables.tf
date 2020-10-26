variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "ecr_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "ecr_immutability" {
  description = "Additional tags for the VPC"
  type        = string
  default     = "MUTABLE"
}
