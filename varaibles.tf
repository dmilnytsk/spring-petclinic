variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type = string
}

variable "az_count" {
  type    = number
  default = 2
}

variable "default_tags" {
  type = map(any)
  default = {
    "company_name" : "epam"
    "business_unit" : "IT"
    "support_email" : "dmytro.ilnytskyy@gmail.com"
  }
}


variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "key_name" {
  type    = string
  default = "Petclinic"
}

variable "root_volume_size" {
  type    = string
  default = "30"
}

variable "multi_az_db" {
  type    = bool
  default = true
}

variable "personal_laptop_ip" {
  type = string
  default = "0.0.0.0"
}


