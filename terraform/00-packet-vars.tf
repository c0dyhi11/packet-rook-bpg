variable "auth_token" {
}

variable "project_id" {
}

variable "hostname" {
  default = "rook"
}

variable "host_size"{
  default = "baremetal_s"
}

variable "facility"{
  default = "sjc1"
}

variable "operating_system"{
  default = "ubuntu_18_04"
}

variable "billing_cycle"{
  default = "hourly"
}

variable "host_count"{
  default = 3
}
