output "local_network_gateways_id" {
  description = "Map of id values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.id if v.id != null && length(v.id) > 0 }
}
output "local_network_gateways_address_space" {
  description = "Map of address_space values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.address_space if v.address_space != null && length(v.address_space) > 0 }
}
output "local_network_gateways_bgp_settings" {
  description = "Map of bgp_settings values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.bgp_settings if v.bgp_settings != null && length(v.bgp_settings) > 0 }
}
output "local_network_gateways_gateway_address" {
  description = "Map of gateway_address values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.gateway_address if v.gateway_address != null && length(v.gateway_address) > 0 }
}
output "local_network_gateways_gateway_fqdn" {
  description = "Map of gateway_fqdn values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.gateway_fqdn if v.gateway_fqdn != null && length(v.gateway_fqdn) > 0 }
}
output "local_network_gateways_location" {
  description = "Map of location values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.location if v.location != null && length(v.location) > 0 }
}
output "local_network_gateways_name" {
  description = "Map of name values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.name if v.name != null && length(v.name) > 0 }
}
output "local_network_gateways_resource_group_name" {
  description = "Map of resource_group_name values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "local_network_gateways_tags" {
  description = "Map of tags values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

