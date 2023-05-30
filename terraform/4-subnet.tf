resource "google_compute_subnetwork" "subnet_us" {
  ip_cidr_range = var.subnet_cidr
  name          = var.region
  network       = google_compute_network.main.id
  region        = var.region
}
