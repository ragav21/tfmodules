variable "resource_group_name" {
  type = string
}


variable "instance_number" {
  description = "Name of the VM"
  type        = string

}

variable "app_prefix" {
  description = "Application Prefix"
  type        = string

}


variable "location"{

  type = string
}


variable "environment" {
  
type = string

}

variable "hns" {

    type = bool
  
}

variable "enable_versioning" {
    type = bool
  
}

variable "infra_encryption" {
  type = bool
}

