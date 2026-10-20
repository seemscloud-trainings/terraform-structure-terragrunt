module "component" {
  source = "git::ssh://git@github.com/seemscloud-trainings/terraform-modules.git//null-resources?ref=4066d5360d37fb656bf1051901d79d69b7219228"

  project_id   = var.project_id
  project_name = var.project_name

  environment_name = var.environment_name

  name   = var.name
  prefix = var.prefix
  labels = var.labels
}
