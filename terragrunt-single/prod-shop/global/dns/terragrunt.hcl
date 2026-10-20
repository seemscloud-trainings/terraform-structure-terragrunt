include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "global-dns"
  prefix = "prod-shop"

  labels = {
    cloud       = "gcp"
    project     = "prod-shop"
    location    = "global"
    application = "global"
    component   = "dns"
  }
}
