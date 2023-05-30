provider "google" {
  project     = var.project
  region      = var.region
  zone        = var.zone
  credentials = local.credentials
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.66.0"
    }
  }
}
