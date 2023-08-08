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

module "users" {
  source = "./modules/users"
}

resource "genesyscloud_flow" "mysimpleflow" {
  filepath = "./modules/call_flow/new_v1-0.yaml"
  file_content_hash = filesha256("./modules/call_flow/new_v1-0.yaml") 
}
