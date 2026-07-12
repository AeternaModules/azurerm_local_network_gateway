output "local_network_gateways_id" {
  description = "Map of id values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.id }
}
output "local_network_gateways_address_space" {
  description = "Map of address_space values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.address_space }
}
output "local_network_gateways_bgp_settings" {
  description = "Map of bgp_settings values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.bgp_settings }
}
output "local_network_gateways_gateway_address" {
  description = "Map of gateway_address values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.gateway_address }
}
output "local_network_gateways_gateway_fqdn" {
  description = "Map of gateway_fqdn values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.gateway_fqdn }
}
output "local_network_gateways_location" {
  description = "Map of location values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.location }
}
output "local_network_gateways_name" {
  description = "Map of name values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.name }
}
output "local_network_gateways_resource_group_name" {
  description = "Map of resource_group_name values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.resource_group_name }
}
output "local_network_gateways_tags" {
  description = "Map of tags values across all local_network_gateways, keyed the same as var.local_network_gateways"
  value       = { for k, v in azurerm_local_network_gateway.local_network_gateways : k => v.tags }
}

