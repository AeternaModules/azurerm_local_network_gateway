variable "local_network_gateways" {
  description = <<EOT
Map of local_network_gateways, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - address_space
    - gateway_address
    - gateway_fqdn
    - tags
    - bgp_settings (block):
        - asn (required)
        - bgp_peering_address (required)
        - peer_weight (optional)
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    address_space       = optional(list(string))
    gateway_address     = optional(string)
    gateway_fqdn        = optional(string)
    tags                = optional(map(string))
    bgp_settings = optional(object({
      asn                 = number
      bgp_peering_address = string
      peer_weight         = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.local_network_gateways : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.local_network_gateways : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.local_network_gateways : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.local_network_gateways : (
        v.address_space == null || (alltrue([for x in v.address_space : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.local_network_gateways : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

