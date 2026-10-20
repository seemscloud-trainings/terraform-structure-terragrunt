include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
  name   = "global-dns"
  prefix = "account-prod"

  labels = {
    cloud       = "aws"
    project     = "account-prod"
    location    = "global"
    application = "global"
    component   = "dns"
  }
}
