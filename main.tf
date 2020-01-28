data "azurerm_resource_group" "main" {
  name = var.resource_group_name
}

data "azurerm_virtual_network" "vnet_1" {
  name = var.vnet_name_1
  resource_group_name = data.azurerm_resource_group.main.name
}

data "azurerm_virtual_network" "vnet_2" {
  name = var.vnet_name_2
  resource_group_name = data.azurerm_resource_group.main.name
}

resource "azurerm_virtual_network_peering" "vnet_peer_1" {
  name                      = "${var.vnet_name_1}-to-${var.vnet_name_2}"
  resource_group_name       = data.azurerm_resource_group.main.name
  virtual_network_name      = data.azurerm_virtual_network.vnet_1.name
  remote_virtual_network_id = data.azurerm_virtual_network.vnet_2.id
}

resource "azurerm_virtual_network_peering" "vnet_peer_2" {
  name                      = "${var.vnet_name_2}-to-${var.vnet_name_1}"
  resource_group_name       = data.azurerm_resource_group.main.name
  virtual_network_name      = data.azurerm_virtual_network.vnet_2.name
  remote_virtual_network_id = data.azurerm_virtual_network.vnet_1.id
}