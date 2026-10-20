# Terraform Structures

- `terraform/` — 20 niezależnych root modules: cloud → projekt/account/subscription/compartment → global lub region → aplikacja → komponent.
- `terragrunt-multi/` — te same 20 jednostek, wspólny `root.hcl`, katalog `env/` i cztery chmury.
- `terragrunt-single/` — 8 jednostek GCP, projekty bezpośrednio w katalogu głównym, bez `env/` i `gcp/`.

Każda jednostka używa modułu `null-resources` z repozytorium `terraform-modules`, pobieranego przez SSH i przypiętego do commita. Nazwy chmur i komponentów są metadanymi: plan tworzy tylko `null_resource`, bez zasobów chmurowych i provisionerów.

## Backend i uruchomienie

Terraform `1.15.8`, Terragrunt `1.1.3`, provider `hashicorp/null` `3.2.4`. Potrzebny jest dostęp SSH do repozytorium modułu oraz ADC z dostępem do istniejącego bucketa stanu GCS.

```bash
export TF_STATE_BUCKET="NAZWA_TWOJEGO_BUCKETA_STANU"
```

W wybranym katalogu Terraform, np. `terraform/env/gcp/prod-mobile/europe-west1/mobile/network`:

```bash
terraform init -backend-config="bucket=$TF_STATE_BUCKET"
terraform validate
terraform plan
```

W wybranej jednostce Terragrunt, np. `terragrunt-single/prod-mobile/europe-west1/mobile/network`:

```bash
terragrunt run -- init
terragrunt run -- validate
terragrunt run -- plan
```

W `terragrunt-multi/` lub `terragrunt-single/`, wszystkie jednostki:

```bash
terragrunt run --all -- plan
```

Bucket jest wspólny, ale każda jednostka ma osobny prefiks stanu. Terraform ma jawny prefiks w `backend.tf`; Terragrunt buduje go przez `path_relative_to_include()`. Trzy warianty mają różne prefiksy, więc nie współdzielą stanów. Backend nie tworzy bucketa.
