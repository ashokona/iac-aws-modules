variable "amazon_side_asn" {
  description = "The Autonomous System Number (ASN) for the Amazon side of the gateway. By default the TGW is created with the current default Amazon ASN."
  type        = list(string)
  default     = []
}

variable "destination_cidr_block" {
  description = "CIDR block that will be added as a destination through the TGW on the private subnets"
  type        = string
  default     = null
}

// VPC ID
variable "vpc_id" {
  description = "Identifier of VPC to associate with the Target Gateway"
  type        = string
  default     = null
}
// Subnet ID
variable "subnet_ids" {
  description = "Identifier of Subnets to associate with the Target Gateway"
  type        = list(string)
  default     = []
}

// TGW Route Table association and propagation 
variable "private_route_table_ids" {
  description = "Identifier of Private Subnet Route Tables to associate with the Target Gateway"
  type        = list(string)
  default     = []
}

// Tags
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "tgw_vpc_attachment_tags" {
  description = "Additional tags for VPC attachments"
  type        = map(string)
  default     = {}
}


