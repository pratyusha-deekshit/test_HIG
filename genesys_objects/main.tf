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

module "auth_division" {
  source = "./modules/auth_division"   
}

# Module for routing-queue
module "routing_queue" {
    source = "./modules/routing_queue"
}

# Module for routing-skill
module "routing_skill" {
	source = "./modules/routing_skill"
}
#Module for routing-wrapup-code
module "routing-wrapup-code" {
	source = "./modules/routing_wrapupcode"
}


#Module for workflow
resource "genesyscloud_flow" "flowname" {
  filepath = "./modules/workflows/SimpleFinancialIvr_v2-0.yaml"
  file_content_hash = filesha256("./modules/workflows/SimpleFinancialIvr_v2-0.yaml") 
}
