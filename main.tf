module "resource_group" {
  source = "./modules/resource-group"

  project_name = var.project_name
  environment  = var.environment
  location     = var.location
  tags         = var.tags

}