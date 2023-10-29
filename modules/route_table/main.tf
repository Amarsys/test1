resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id
    dynamic "route" {
    for_each = var.routes
    content {
      carrier_gateway_id = lookup(route.value, "carrierGatewayId", null)
      cidr_block = lookup(route.value, "destinationCidrBlock", null)
      core_network_arn = lookup(route.value, "core_network_arn", null)
      destination_prefix_list_id = lookup(route.value, "destinationPrefixListId", null)
      egress_only_gateway_id = lookup(route.value, "egressOnlyInternetGatewayId", null)
      gateway_id = lookup(route.value, "gatewayId", null)
      ipv6_cidr_block = lookup(route.value, "destinationIpv6CidrBlock", null)
      local_gateway_id = lookup(route.value, "localGatewayId", null)
      nat_gateway_id = lookup(route.value, "natGatewayId", null)
      network_interface_id = lookup(route.value, "networkInterfaceId", null)
      transit_gateway_id = lookup(route.value, "transitGatewayId", null)
      vpc_endpoint_id = lookup(route.value, "vpcEndpointId", null)
      vpc_peering_connection_id = lookup(route.value, "vpcPeeringConnectionId", null)
    }
  }
  tags = var.tags
}
