# Create a resource group
module "example_server" {
  source = "../../oracle_server"

  rg_name     = "rg-example-ne-01"
  rg_location = "uksouth"
}