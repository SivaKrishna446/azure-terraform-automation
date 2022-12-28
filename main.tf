resource "azurerm_resource_group" "rg"{
    name = var.resource_group_name
    location = var.location
}
resource "azurerm_container_registry" "acr" {
    name                = var.acr_name
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    sku                 = "Premium"
    admin_enabled       = false
}

resource "azurerm_kubernetes_cluster" "k8s" {
    name                    = var.k8s_cluster_name
    resource_group_name     = azurerm_resource_group.rg.name
    location                = azurerm_resource_group.rg.location
    dns_prefix              = "foundationproduction"

    default_node_pool {
      name = "default"
      node_count = 1
      vm_size = "Standard_D2_v2"
    }

    identity {
      type = "SystemAssigned"
    }
    tags = {
      "environment" = "production"
    }
}