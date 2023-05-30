resource "google_compute_firewall" "ssh-rule" {
  name    = "external-ssh"
  network = google_compute_network.main.name
  allow {
    protocol = "tcp"
    ports    = ["22", "443"]
  }
  target_tags   = ["assignment"]
  source_ranges = ["0.0.0.0/0"]
}