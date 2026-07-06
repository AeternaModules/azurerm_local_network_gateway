output "local_network_gateways" {
  description = "All local_network_gateway resources"
  value       = azurerm_local_network_gateway.local_network_gateways
}
output "local_network_gateways_address_space" {
  description = "List of address_space values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.address_space]
}
output "local_network_gateways_bgp_settings" {
  description = "List of bgp_settings values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.bgp_settings]
}
output "local_network_gateways_gateway_address" {
  description = "List of gateway_address values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.gateway_address]
}
output "local_network_gateways_gateway_fqdn" {
  description = "List of gateway_fqdn values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.gateway_fqdn]
}
output "local_network_gateways_location" {
  description = "List of location values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.location]
}
output "local_network_gateways_name" {
  description = "List of name values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.name]
}
output "local_network_gateways_resource_group_name" {
  description = "List of resource_group_name values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.resource_group_name]
}
output "local_network_gateways_tags" {
  description = "List of tags values across all local_network_gateways"
  value       = [for k, v in azurerm_local_network_gateway.local_network_gateways : v.tags]
}

