variable "sg_name" {
  type = string
  default = "mongodb"
}

variable "ProjectName" {
  type = string
  default = "Roboshop"
}

variable "Environment" {
  type = string
  default = "Dev"
}

variable "description"{
  type = string
  default = "Security Group for Roboshop"
}

variable "sg_ingress_rules" {
  default = [
    {
        description      = "Allow port 80"
        from_port        = 80 # 0 means all ports
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 443"
        from_port        = 443 # 0 means all ports
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 22"
        from_port        = 22# 0 means all ports
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
}