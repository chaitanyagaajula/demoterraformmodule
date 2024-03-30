resource "google_compute_network" "vpcrepo" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.vpc_name}-subnet"
  ip_cidr_range = var.vpc_cidr
  network       = google_compute_network.vpc.self_link
  region        = var.region
}

