provider "azurerm" {
  subscription_id = "1051e55b-06f7-40f6-ab2a-6d3f2f54c3df"  # Azure Subscription ID
  tenant_id       = "1051e55b-06f7-40f6-ab2a-6d3f2f54c3df"  # Azure Tenant ID 
  features {}
}

provider "azuread" {
  tenant_id = "1051e55b-06f7-40f6-ab2a-6d3f2f54c3df"  
}
