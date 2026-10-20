include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=ce61179a0f37872e8376fdfe0220fafe08bdc6c4"
}

locals {
  account = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region  = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

inputs = {
  account_id   = local.account.locals.account_id
  account_name = local.account.locals.account_name
  region_name  = local.region.locals.region_name

  name   = "shop-compute"
  prefix = local.account.locals.account_name

  labels = {
    cloud       = "aws"
    application = "shop"
    component   = "compute"
  }
}
