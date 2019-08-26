provider "packet" {
  auth_token = "${var.auth_token}"
}

module "cloud-init" {
  source = "./modules/cloud-init"
}

module "host" {
  source = "./modules/packet"
  providers = {
    packet = "packet"
  }
  project_id = "${var.project_id}"
  hostname = "${var.hostname}"
  server_count = "${var.host_count}"
  server_size = "${var.host_size}"
  operating_system = "${var.operating_system}"
  facility = "${var.facility}"
  billing_cycle = "${var.billing_cycle}"
  user_data = "${module.cloud-init.bootstrap}"
}
