include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=ce61179a0f37872e8376fdfe0220fafe08bdc6c4"
}

locals {
  compartment = read_terragrunt_config(find_in_parent_folders("compartment.hcl"))
}

inputs = {
  compartment_id   = local.compartment.locals.compartment_id
  compartment_name = local.compartment.locals.compartment_name

  name   = "global-dns"
  prefix = local.compartment.locals.compartment_name

  labels = {
    cloud       = "oci"
    project     = local.compartment.locals.compartment_name
    location    = "global"
    application = "global"
    component   = "dns"
  }
}
