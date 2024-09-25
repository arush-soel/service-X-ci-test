variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The type of machine to use for the VM"
  type        = string
  default     = "n1-standard-1"  # You can set a default value if desired
}

variable "zone" {
  description = "The zone where the VM will be deployed"
  type        = string
}

variable "image" {
  description = "The image to use for the boot disk of the VM"
  type        = string
}

variable "network" {
  description = "The VPC network to attach the VM to"
  type        = string
  default     = "default"  # You can set a default value if desired
}

variable "subnetwork" {
  description = "The subnetwork to attach the VM to"
  type        = string
  default     = "default"  # You can set a default value if desired
}

variable "network_tags" {
  description = "A list of network tags to assign to the VM instance"
  type        = list(string)
  default     = []  # Empty list as default
}

variable "username" {
  description = "SSH username for the VM"
  type        = string
}