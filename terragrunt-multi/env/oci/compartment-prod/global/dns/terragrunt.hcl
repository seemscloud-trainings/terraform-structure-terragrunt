include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "global-dns"
  prefix = "compartment-prod"

  labels = {
    cloud       = "oci"
    project     = "compartment-prod"
    location    = "global"
    application = "global"
    component   = "dns"
  }
}
