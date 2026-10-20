include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=ce61179a0f37872e8376fdfe0220fafe08bdc6c4"
}

locals {
  project = read_terragrunt_config(find_in_parent_folders("project.hcl"))
}

inputs = {
  project_id   = local.project.locals.project_id
  project_name = local.project.locals.project_name

  name   = "global-dns"
  prefix = local.project.locals.project_name

  labels = {
    cloud       = "gcp"
    application = "global"
    component   = "dns"
  }
}
