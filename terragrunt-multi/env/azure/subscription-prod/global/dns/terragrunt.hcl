include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "global-dns"
  prefix = "subscription-prod"

  labels = {
    cloud       = "azure"
    project     = "subscription-prod"
    location    = "global"
    application = "global"
    component   = "dns"
  }
}
