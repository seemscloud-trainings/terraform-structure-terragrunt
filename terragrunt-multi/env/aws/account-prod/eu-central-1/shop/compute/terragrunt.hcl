include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "shop-compute"
  prefix = "account-prod"

  labels = {
    cloud       = "aws"
    project     = "account-prod"
    location    = "eu-central-1"
    application = "shop"
    component   = "compute"
  }
}
