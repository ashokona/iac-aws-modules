# DATA
data "aws_ec2_transit_gateway" "transitgateway" {
  filter {
    name   = "options.amazon-side-asn"
    values = var.amazon_side_asn
  }
}

#########################
# Route table and routes
#########################
resource "aws_route" "private_transit_gateway" {
  count                  = length(var.private_route_table_ids) > 0 ? length(var.private_route_table_ids) : 0
  route_table_id         = var.private_route_table_ids[count.index]
  destination_cidr_block = var.destination_cidr_block
  transit_gateway_id     = data.aws_ec2_transit_gateway.transitgateway.id

  timeouts {
    create = "5m"
  }

}


###########################################################
# TGW Attachment
###########################################################
resource "aws_ec2_transit_gateway_vpc_attachment" "this" {
  transit_gateway_id = data.aws_ec2_transit_gateway.transitgateway.id
  vpc_id             = var.vpc_id
  subnet_ids         = var.subnet_ids

  tags = merge(
    var.tags,
    var.tgw_vpc_attachment_tags,
  )
}
