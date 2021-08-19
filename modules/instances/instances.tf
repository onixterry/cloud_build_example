resource "google_compute_instance" "tf1" {
  # (resource arguments)
  project      = var.project_id
  name         = "cb-instance-1"
  machine_type = "f1-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10-buster-v20210817"
    }
  }

  network_interface {
    network = "cloudbuild-vpc"
    access_config {
    }
    subnetwork = "cb-subnet-01"
  }

  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
  allow_stopping_for_update = true

}


resource "google_compute_instance" "tf2" {
  # (resource arguments)
  project      = var.project_id
  name         = "cb-instance-2"
  machine_type = "f1-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10-buster-v20210817"
    }
  }

  network_interface {
    network = "cloudbuild-vpc"
    access_config {
    }
    subnetwork = "cb-subnet-02"
  }

metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
allow_stopping_for_update = true
}
