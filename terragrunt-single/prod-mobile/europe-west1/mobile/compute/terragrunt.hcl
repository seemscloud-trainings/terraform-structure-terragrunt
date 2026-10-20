include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "mobile-compute"
  prefix = "prod-mobile"

  labels = {
    cloud       = "gcp"
    project     = "prod-mobile"
    location    = "europe-west1"
    application = "mobile"
    component   = "compute"
  }
}
