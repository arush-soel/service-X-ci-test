terraform {
  backend "gcs" {
    bucket = "tf-state-dev-bucket"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "vm" {
  source        = "../../modules/vm"
  instance_name = var.instance_name
  machine_type  = var.machine_type
  zone          = var.zone
  image         = var.image
  network       = var.network
  subnetwork    = var.subnetwork
  network_tags  = var.network_tags
  username      = var.username
}

output "instance_name" {
  value = module.vm.instance_name
}

output "instance_zone" {
  value = module.vm.instance_zone
}