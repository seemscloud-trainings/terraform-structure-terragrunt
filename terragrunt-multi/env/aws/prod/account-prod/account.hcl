# Demonstration ID; replace with your own when using a cloud provider.
locals {
  account_id   = "000000000000"
  account_name = "account-prod"
}

inputs = {
  account_id   = local.account_id
  account_name = local.account_name
}
