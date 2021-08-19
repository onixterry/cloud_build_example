terraform {
    required_version = "~> 1.0.4"
    required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.54.0"
    }
  }

  backend "gcs" {
    bucket = "terry-terraform062021-cloudbuild"
    prefix = "terraform/state"
  }
}


module "instances" {
  source = "../../modules/instances"
}

module "storage" {
  source = "../../modules/storage"
}

module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "3.2.2"

    project_id   = var.project_id
    network_name = "cloudbuild-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "cb-subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = var.region
        },
        {
            subnet_name           = "cb-subnet-02"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = var.region
        }
    ]

}

#resource "google_compute_firewall" "tf-firewall" {
#  name    = "tf-firewall"
#  network = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-11e306a6b50b/global/networks/terraform-vpc"

#  allow {
#    protocol = "tcp"
#    ports    = ["80"]
#  }

#  source_ranges = ["0.0.0.0/0"]
#}
