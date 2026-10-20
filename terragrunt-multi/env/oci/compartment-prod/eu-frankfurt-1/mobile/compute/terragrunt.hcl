include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "mobile-compute"
  prefix = "compartment-prod"

  labels = {
    cloud       = "oci"
    project     = "compartment-prod"
    location    = "eu-frankfurt-1"
    application = "mobile"
    component   = "compute"
  }
}
