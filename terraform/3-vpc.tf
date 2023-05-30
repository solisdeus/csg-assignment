resource "google_compute_network" "main" {
  name                            = "assignment-network"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = "false"
}
