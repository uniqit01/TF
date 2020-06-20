resource "openstack_networking_secgroup_v2" "sg-ssh-spetrovk" {
  name                 = "sg-ssh-spetrovk"
  description          = "SSH"
  delete_default_rules = true
}
