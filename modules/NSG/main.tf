resource "azurerm_network_security_group" "main" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = merge(
    var.tags,
    {
      environment = var.environment
    }
  )

}