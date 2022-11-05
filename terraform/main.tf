terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone = "ru-central1-a"
}

resource "yandex_compute_instance" "vm-1" {
  name = "nginx"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd8kb72eo1r5fs97a1ki" #Ubuntu-2204
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.internal.id
    nat       = true
  }

  metadata = {
    ssh-keys = "$(id -u -n):${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "yandex_vpc_network" "LAN" {
  name = "LAN"
}

resource "yandex_vpc_subnet" "internal" {
  name           = "internal"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.LAN.id
  v4_cidr_blocks = ["192.168.1.0/24"]
}

output "internal_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

output "external_ip_address_vm_1" {
  value = yandex_compute_instance.vm-1.network_interface.0.nat_ip_address
}

resource "local_file" "inventory" {
 filename = "./inventory/hosts.ini"
 content = <<EOF
[hosts]
${yandex_compute_instance.vm-1.network_interface.0.nat_ip_address}
EOF
}
