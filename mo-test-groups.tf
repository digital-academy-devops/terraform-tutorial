locals {
  zone = "ru-central1-a"
}

module "mo-server-group" {
  count = 2
  source = "./modules/servergroup"

  zone = local.zone
  instance_number = 2
  group_prefix = "mo-${count.index}"
  group_name = "appservers"

}