data "template_file" "cloud-init" {
  template = "${file("modules/cloud-init/templates/cloud-init.conf")}"
}

output "bootstrap" {
  value = "${data.template_file.cloud-init.rendered}"
}
