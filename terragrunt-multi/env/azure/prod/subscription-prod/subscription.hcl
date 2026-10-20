# Demonstration ID; replace with your own when using a cloud provider.
locals {
  subscription_id   = "00000000-0000-0000-0000-000000000000"
  subscription_name = "subscription-prod"
}

inputs = {
  subscription_id   = local.subscription_id
  subscription_name = local.subscription_name
}
