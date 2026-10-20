include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=4066d5360d37fb656bf1051901d79d69b7219228"
}

locals {
  environment  = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  subscription = read_terragrunt_config(find_in_parent_folders("subscription.hcl"))
}

inputs = {
  environment_name  = local.environment.locals.environment_name
  subscription_id   = local.subscription.locals.subscription_id
  subscription_name = local.subscription.locals.subscription_name

  name   = "global-dns"
  prefix = local.subscription.locals.subscription_name

  labels = {
    cloud       = "azure"
    application = "global"
    component   = "dns"
  }
}
