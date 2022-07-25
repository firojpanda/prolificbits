provider "google" {
project = "649885794631"
region = "us-central"
}

resource "google_compute_instance" "pocvm" {
name = "vm_tf_gcp_git"
zone = "us-central1-a"
boot_disk {
initialize_params {
  image = "debian-cloud/debian-9"
  size = "10"
}
}
machine_type = "f1-micro" 
network_interface {
network = "default"
}
}
