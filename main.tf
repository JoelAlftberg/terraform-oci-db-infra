# Root compartment OCID
variable "root_compartment_ocid" {
    type = string
    default = "ocid1.tenancy.oc1..aaaaaaaa4uzonri7s2nc63sjbkie5ekw5ew5tqgnah4ply24vxfmb3a4ubqq"
}

# Compartment variables
variable "compartment_name" {}
variable "compartment_description" {}

# oci-configuration file can be downloaded from the tenant in OCI
provider "oci" {
    config_file_profile = "DEFAULT"
}

# Provision compartment
resource "oci_identity_compartment" "prod_compartment" {
    compartment_id = var.root_compartment_ocid
    name = var.compartment_name
    description = var.compartment_description
}
