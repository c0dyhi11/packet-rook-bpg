# Packet Rook Storage via BGP
### Pre-Reqs
#### Install things:
###### [JQ](https://stedolan.github.io/jq/download/)
###### [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
###### [Terraform](https://www.terraform.io/downloads.html)
#### Create your terraform/vars_override.tf file
```terraform
variable "auth_token" {
  default = "#*#*#*#*#"
}

variable "project_id" {
  default = "*#*#*#*#*"
}
```
