resource "azurerm_kubernetes_cluster" "aks" {
  name                = "sit722akspart04"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "sit722k8s"
  kubernetes_version  = "1.29.8"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  # Add this block to enable the LoadBalancer and assign an external IP
  network_profile {
    network_plugin    = "azure"
    load_balancer_sku = "standard"  # Change to Standard for external IP
    outbound_type     = "loadBalancer"
  }
}
