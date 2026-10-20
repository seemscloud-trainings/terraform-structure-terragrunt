include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform_binary = "terraform"

terraform {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=27e44de3820b74962c4348f2687b4e6dca40bb6f"
}

inputs = {
  name   = "mobile-network"
  prefix = "prod-mobile"

  labels = {
    cloud       = "gcp"
    project     = "prod-mobile"
    location    = "europe-west1"
    application = "mobile"
    component   = "network"
  }
}
