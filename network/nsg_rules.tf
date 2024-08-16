## Inbound NSG rule to allow ssh management traffic from Internet to the radious vm

module "nsgr_any_to_radius_server_tcp_22" {
  source = "../modules/nsg_rule"
  name                        = "allow_ssh_inbound"
  priority                    = "100"
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_ranges          = ["0-65535"]
  destination_port_ranges     = ["22", ]
  source_address_prefix       = "Internet"
  destination_address_prefix  = "*"
  resource_group_name         = module.network_rg.name
  network_security_group_name = "internal_nsg"
}