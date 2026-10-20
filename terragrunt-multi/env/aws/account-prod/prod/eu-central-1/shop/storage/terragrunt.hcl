include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=4066d5360d37fb656bf1051901d79d69b7219228"
}

locals {
  environment = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  account     = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

inputs = {
  environment_name = local.environment.locals.environment_name
  account_id       = local.account.locals.account_id
  account_name     = local.account.locals.account_name
  region_name      = local.region.locals.region_name

  name   = "shop-storage"
  prefix = local.account.locals.account_name

  labels = {
    cloud       = "aws"
    application = "shop"
    component   = "storage"
  }
}
