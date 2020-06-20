data "openstack_networking_secgroup_v2" "sg-ssh-spetrovk" {
  name = "sg-ssh-spetrovk"
}

data "openstack_networking_secgroup_v2" "sg-AgileAcademyTelIT-default" {
  name = "sg-AgileAcademyTelIT-default"
}

data "openstack_compute_keypair_v2" "spetrovk-keypair" {
  name = "spetrovk-keypair"
}

resource "openstack_blockstorage_volume_v2" "data0" {
  name = "data0"
  size = 4
}

resource "openstack_networking_port_v2" "primary_port" {
  network_id = local.network_id
  security_group_ids = [
    data.openstack_networking_secgroup_v2.sg-ssh-spetrovk.id,
    data.openstack_networking_secgroup_v2.sg-AgileAcademyTelIT-default.id,
  ]
  admin_state_up = "true"
  fixed_ip {
    subnet_id  = local.subnet_id
    ip_address = local.ip_address
  }
}

resource "openstack_compute_instance_v2" "spetrovk-vm" {
  name        = "spetrovk-vm"
  image_name  = "Standard_CentOS_7_latest"
  flavor_name = "s2.medium.2"
  key_pair    = data.openstack_compute_keypair_v2.spetrovk-keypair.name
  user_data   = file("mount_vm.sh")
#  user_data = <<EOF
#! /bin/bash
#systemctl stop firewalld
#touch test /mnt/data
#EOF

  network {
    port = openstack_networking_port_v2.primary_port.id
  }
}

resource "openstack_compute_volume_attach_v2" "data0" {
  instance_id = openstack_compute_instance_v2.spetrovk-vm.id
  volume_id   = openstack_blockstorage_volume_v2.data0.id
}

resource "null_resource" "provision" {
  depends_on = [openstack_compute_instance_v2.spetrovk-vm]
  #triggers = {
  #  build_number = timestamp()
  #}

  connection {
    user        = "linux"
    private_key = file("/home/spetrovk/.ssh/id_rsa")
    host        = openstack_compute_instance_v2.spetrovk-vm.network[0].fixed_ip_v4
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum repolist",
      "sudo yum update -y",
      "echo Hi",
    ]
  }
}

output "binding" {
  value = openstack_networking_port_v2.primary_port.binding
}

output "mac_address" {
  value = openstack_compute_instance_v2.spetrovk-vm.network[0].mac
}
