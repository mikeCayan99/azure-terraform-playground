resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}-${var.enviroment}"
  location = var.location

  tags = merge(
    var.tags,
    {
      enviroment = var.enviroment
    }
  )
}