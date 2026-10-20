module "component" {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=27e44de3820b74962c4348f2687b4e6dca40bb6f"

  name   = var.name
  prefix = var.prefix
  labels = var.labels
}
