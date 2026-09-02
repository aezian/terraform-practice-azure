resource "azurerm_resource_group" "main" {
 name 	  		  = var.resource_group_name
 location 		  = var.location
 tags 			  = var.tags
}

resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.main.id
  container_access_type = "private"
}

resource "azurerm_container_registry" "main" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku                 = "Basic"
  admin_enabled       = false

  tags = var.tags
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = var.aks_cluster_name
  location = var.aks_location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = var.aks_dns_prefix

  default_node_pool {
  name       = "default"
  node_count = var.aks_node_count
  vm_size    = var.aks_vm_size

  upgrade_settings {
    max_surge                     = "10%"
    drain_timeout_in_minutes      = 0
    node_soak_duration_in_minutes = 0
  }
}

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

resource "azurerm_role_assignment" "aks_acr_pull" {
  scope                = azurerm_container_registry.main.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.main.kubelet_identity[0].object_id
}
