include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "global-dns"
  prefix = "prod-mobile"

  labels = {
    cloud       = "gcp"
    project     = "prod-mobile"
    location    = "global"
    application = "global"
    component   = "dns"
  }
}
