include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "mobile-compute"
  prefix = "subscription-prod"

  labels = {
    cloud       = "azure"
    project     = "subscription-prod"
    location    = "westeurope"
    application = "mobile"
    component   = "compute"
  }
}
