include "root" {
  path = find_in_parent_folders("root.hcl")
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
