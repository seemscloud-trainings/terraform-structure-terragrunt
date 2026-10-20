include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=4066d5360d37fb656bf1051901d79d69b7219228"
}

locals {
  environment = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  compartment = read_terragrunt_config(find_in_parent_folders("compartment.hcl"))
}

inputs = {
  environment_name = local.environment.locals.environment_name
  compartment_id   = local.compartment.locals.compartment_id
  compartment_name = local.compartment.locals.compartment_name

  name   = "global-dns"
  prefix = local.compartment.locals.compartment_name

  labels = {
    cloud       = "oci"
    application = "global"
    component   = "dns"
  }
}
