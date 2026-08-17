output "resource_group_name" {
description = "name of the created resource group"
value = azurerm_resource_group.main.name
}

output "resource_group_location" {
description = "location of the created resource group"
value = azurerm_resource_group.main.location
}

output "acr_login_server" {
 description ="Login server URL for the Azure Container Registry"
 value = azurerm_container_registry.main.login_server
}
