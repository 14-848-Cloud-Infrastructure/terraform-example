resource "google_compute_instance" "cloudinfra" {
  name         = var.cloud_server_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
  metadata_startup_script = file("startup.sh")

  tags = ["http-server"]
}

