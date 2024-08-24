variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "sg_ingress_rules" {
    default = [ ]
  }

variable "ProjectName" {
  type = string
}

variable "Environment" {
  type = string
}

variable "common_tags" {
  type = map
  default = {}
}

variable "sg_tags" {
  type = map
  default = {}
}