output "vpc_route_server_propagations_region" {
  description = "Map of region values across all vpc_route_server_propagations, keyed the same as var.vpc_route_server_propagations"
  value       = { for k, v in aws_vpc_route_server_propagation.vpc_route_server_propagations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_route_server_propagations_route_server_id" {
  description = "Map of route_server_id values across all vpc_route_server_propagations, keyed the same as var.vpc_route_server_propagations"
  value       = { for k, v in aws_vpc_route_server_propagation.vpc_route_server_propagations : k => v.route_server_id if v.route_server_id != null && length(v.route_server_id) > 0 }
}
output "vpc_route_server_propagations_route_table_id" {
  description = "Map of route_table_id values across all vpc_route_server_propagations, keyed the same as var.vpc_route_server_propagations"
  value       = { for k, v in aws_vpc_route_server_propagation.vpc_route_server_propagations : k => v.route_table_id if v.route_table_id != null && length(v.route_table_id) > 0 }
}

