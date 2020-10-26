# AWS Transit Gateway Terraform module

Terraform module which creates Transit Gateway resources on AWS.

This type of resources are supported:

* [Transit Gateway VPC Attachment](https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html)

Not supported yet:

* [Transit Gateway VPC Attachment Accepter](https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html)

## Terraform versions

Only Terraform 0.12 is supported.

## Usage with VPC module

```hcl

module "tgw" {
source = "../../it-iac-aws-terraform/modules/existing-transit-gateway"
  
  amazon_side_asn = [64512]
  vpc_id                  = module.vpc.vpc_id
  subnet_ids              = module.vpc.private_subnets
  private_route_table_ids = module.vpc.private_route_table_ids
  destination_cidr_block = "10.0.0.0/8"

  tags = {
    Purpose = "tgw-complete-example"
  }
}
```

