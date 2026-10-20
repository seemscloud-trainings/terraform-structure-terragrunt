include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=4066d5360d37fb656bf1051901d79d69b7219228"
}

locals {
  environment = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  project     = read_terragrunt_config(find_in_parent_folders("project.hcl"))
  region      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

inputs = {
  environment_name = local.environment.locals.environment_name
  project_id       = local.project.locals.project_id
  project_name     = local.project.locals.project_name
  region_name      = local.region.locals.region_name

  name   = "mobile-api-compute"
  prefix = local.project.locals.project_name

  labels = {
    cloud       = "gcp"
    application = "mobile-api"
    component   = "compute"
  }
}
