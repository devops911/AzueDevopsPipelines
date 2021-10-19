provider "azurerm" {
  subscription_id = "8690ba9a-5388-4b31-90df-15acb9170e0e"
  client_id       = "f0abb33a-9eb9-4199-ba7f-c7183350492c"
  client_secret   = "D_GtMa7uwt3q0ZUB8WOWwGwo~oPwXqLFyQ"
  tenant_id       = "97bc43fb-b749-4757-955f-8167fc70e670"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "${var.resource-group-name}-${var.environment}"
  location = "westeurope"
  
  tags = {
    environment = var.environment
  }
}
