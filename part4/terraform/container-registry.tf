resource "azurerm_container_registry" "acr" {
  name                = "sit722acrpart4"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true  # Enables admin user (required for login)
}
