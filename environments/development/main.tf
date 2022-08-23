module "development_server" {
  source = "../../modules/oracle_server"

  rg_name     = "rg-development-ne-01"
  rg_location = "uksouth"
}