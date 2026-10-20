module "component" {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=ce61179a0f37872e8376fdfe0220fafe08bdc6c4"

  region_name = var.region_name

  name   = var.name
  prefix = var.prefix
  labels = var.labels
}
