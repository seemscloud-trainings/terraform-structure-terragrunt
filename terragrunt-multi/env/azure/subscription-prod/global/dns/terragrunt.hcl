include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=ce61179a0f37872e8376fdfe0220fafe08bdc6c4"
}

locals {
  subscription = read_terragrunt_config(find_in_parent_folders("subscription.hcl"))
}

inputs = {
  subscription_id   = local.subscription.locals.subscription_id
  subscription_name = local.subscription.locals.subscription_name

  name   = "global-dns"
  prefix = local.subscription.locals.subscription_name

  labels = {
    cloud       = "azure"
    location    = "global"
    application = "global"
    component   = "dns"
  }
}
