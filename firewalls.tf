resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
resource "google_compute_firewall" "allow-egress" {
  name    = "allow-egress"
  network = google_compute_network.main.name

  allow {
    protocol = "all"
  }

  destination_ranges = ["0.0.0.0/0"]
  source_ranges = ["10.0.0.0/18"]
}