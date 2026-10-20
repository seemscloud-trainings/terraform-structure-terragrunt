include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "shop-compute"
  prefix = "prod-shop"

  labels = {
    cloud       = "gcp"
    project     = "prod-shop"
    location    = "europe-west1"
    application = "shop"
    component   = "compute"
  }
}
