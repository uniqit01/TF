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
  count = length(var.ips)
  name  = format("data%02d", count.index + 1)
  size = 4
}

resource "openstack_networking_port_v2" "primary_port" {
  count      = length(var.ips)
  name       = format("port-%02d", count.index + 1)
  network_id = local.network_id
  security_group_ids = [
    data.openstack_networking_secgroup_v2.sg-ssh-spetrovk.id,
    data.openstack_networking_secgroup_v2.sg-AgileAcademyTelIT-default.id,
  ]
  admin_state_up = "true"
  fixed_ip {
    subnet_id  = local.subnet_id
    ip_address = var.ips[count.index]
  }
}

resource "openstack_compute_instance_v2" "spetrovk-vm" {
  count       = length(var.ips)
  name        = format("spetrovk-vm-%02d", count.index + 1)
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
    port = openstack_networking_port_v2.primary_port[count.index].id
  }
}

resource "openstack_compute_volume_attach_v2" "data0" {
  count       = length(var.ips)
  instance_id = openstack_compute_instance_v2.spetrovk-vm[count.index].id
  volume_id   = openstack_blockstorage_volume_v2.data0[count.index].id
}

output "binding" {
  value = openstack_networking_port_v2.primary_port[*].binding
}

output "mac_address" {
  value = openstack_compute_instance_v2.spetrovk-vm[*].network[0].mac
}
