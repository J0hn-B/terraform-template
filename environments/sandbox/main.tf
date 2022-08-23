module "sandbox_server" {
  source = "../../modules/oracle_server"

  rg_name     = "rg-sandbox-ne-01"
  rg_location = "uksouth"
}