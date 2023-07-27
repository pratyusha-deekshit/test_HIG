terraform {
  backend "remote" {
    organization = "TestPD2442"

    workspaces {
      prefix = "HIGterrform_"
    }
  }

  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
}

module "classifier_users" {
  source = "./modules/users"
}