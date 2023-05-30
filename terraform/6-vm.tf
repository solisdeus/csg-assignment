resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"
  tags         = ["csg", "assignment"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-pro-cloud/ubuntu-pro-2004-lts"
    }
  }

  metadata = {
    enable-oslogin = false
    ssh-keys       = local.ssh-public-key
  }

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.vm_instance_sa.email
    scopes = ["cloud-platform"]
  }

  network_interface {
    network    = google_compute_network.main.name
    subnetwork = google_compute_subnetwork.subnet_us.name
    access_config {
    }
  }

}

resource "google_service_account" "vm_instance_sa" {
  account_id   = "vm-instance-sa"
  display_name = "VM Service Account"
}