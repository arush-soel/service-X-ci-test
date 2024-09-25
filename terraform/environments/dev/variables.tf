variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The Google Cloud region to deploy resources"
  type        = string
  default     = "us-central1"  # You can set a default value if desired
}

variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the VM"
  type        = string
}

variable "zone" {
  description = "The zone where the VM will be deployed"
  type        = string
}

variable "image" {
  description = "The image to use for the VM"
  type        = string
}

variable "network" {
  description = "The network to attach the VM to"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to attach the VM to"
  type        = string
}

variable "network_tags" {
  description = "The tags to assign to the VM instance"
  type        = list(string)
  default     = ["dev", "test"]
}

variable "username" {
  description = "SSH username for the VM"
  type        = string
}
