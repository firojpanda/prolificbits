provider "google" {
project = "649885794631"
region = "us-central"
}

resource "google_compute_instance" "vm_instance2" {
name = "vm-tf-gcp-git-2"
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

resource "google_compute_instance" "vm_instance3" {
name = "vm-tf-gcp-git-3"
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
