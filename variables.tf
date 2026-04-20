variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "instance_name" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "allowed_cidr" {
  type = list(string)
}
