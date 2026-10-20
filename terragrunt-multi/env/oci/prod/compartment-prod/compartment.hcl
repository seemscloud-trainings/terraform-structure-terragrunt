# Demonstration ID; replace with your own when using a cloud provider.
locals {
  compartment_id   = "ocid1.compartment.oc1..example"
  compartment_name = "compartment-prod"
}

inputs = {
  compartment_id   = local.compartment_id
  compartment_name = local.compartment_name
}
