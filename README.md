# terraform-oci-infra
Basic configuration files for setting up Oracle DBs in OCI

## Terraform init - OCI provider

To enable the OCI provider and authenticate against our tenancy we create a config file in OCI via our user and an API signing key. It is currently stored under the ```$HOME/.oci/config path```

The config used is the DEFAULT one but should be changed to a specific customer preferrably

## Variables
